package AWS::API::Builder {
  use Moose;

  use Data::Compare;
  use Template;

  has struct => (is => 'ro', required => 1);
  has api => (is => 'ro', required => 1);

  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });


  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub operation {
    my ($self, $op) = @_;
    die "operation doesn't exist $op" if (not defined $self->struct->{operations}->{ $op });
    return $self->struct->{operations}->{ $op };
  }

  sub save_class {
    my ($self, $class_name, $content) = @_;
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
  }

  sub register_enum {
    my ($self, $enum_class, $definition) = @_;
    die "Already an Inner Class" if ($self->inner_classes->{ $enum_class });
    if (    defined $self->enums->{ $enum_class }
        and not $self->enums_equal($self->enums->{ $enum_class }, $definition)
       ){
      die "Unequal defs";
    } else {
      $self->enums->{ $enum_class } = $definition;
    }
  }

  sub register_inner_class {
    my ($self, $class_name, $definition) = @_;
    die "Already an Enum" if ($self->enums->{ $class_name });
    if (defined $self->inner_classes->{ $class_name } and not $self->definitions_equal($self->inner_classes->{ $class_name }, $definition)){
      print "---- Registered Definition ----\n";
      my $temp = [ sort keys %{ $self->inner_classes->{ $class_name }->{members} } ];
      p $temp;
      print "---- New Definition ------\n";
      $temp = [ sort keys %{ $definition->{members} } ];
      p $temp;
      die "$class_name tried to register but was already registered";
    } else {
      $self->inner_classes->{ $class_name } = $definition;
    }
  }

  sub enums_equal {
    my ($self, $left, $right) = @_;
    return Compare(
      $left, $right
    );
  }

  sub definitions_equal {
    my ($self, $left, $right) = @_;
    return Compare(
      [ sort keys %{ $left->{members} } ],
      [ sort keys %{ $right->{members} } ]
    );
  }

  sub get_caller_class_type {
    my ($self, $param_props) = @_;
    my $param_name = $param_props->{shape_name};

    my $type;
    if (not exists $param_props->{ type }) {
      die "doesn't have a type entry for $param_name with def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      $self->flattened_arrays(1) if ($param_props->{ flattened });
      my $inner_type = $self->get_caller_class_type($param_props->{members});
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # TODO: AWS::API::TimeStamp
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'long') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'double') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'float') {
      #TODO: Check
      $type = 'Num';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'boolean') {
      # TODO: Bool
      $type = 'Bool';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'integer') {
      $type = 'Int';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'string') {
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'blob') {
      # TODO: check
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'map') {
      my $api = $self->api;
      $type = "${api}::$param_name";
      $self->register_inner_class($type, $param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      # This is an inner class. We have to generate an inner class
      $type = $param_props->{ shape_name };
      die "doesn't have a shape_name entry for $param_name with def " . Dumper($param_props) if (not defined $type);

      if ($type !~ /^AWS\:\:/) {
        # If the type isn't in the AWS namespace, we prefix it with our class name,
        # and queue it for building. Else the class is assumed to already be built
        my $api = $self->api;
        $type = "${api}::${type}";
        $self->register_inner_class($type, $param_props);
      }
    }
    if (not defined $type) {
      p $param_props;
      die "Unknown type: $param_props->{ type }";
    }
    return $type;
  }

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new;
    my $output = '';
    $tt->process(\$template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process_api {
    my $self = shift;
    my $output = '';
    my ($calls, $results);

    foreach my $op (sort @{ $self->operations }){
      my $operation = $self->operation($op);
      my $api_call = $operation->{name};

      if      (not keys %{$operation->{ input }}) {
        # There is no input inner classes in a class with no memebers
      } elsif ($operation->{ input }{type} eq 'structure'){
        if (keys %{ $operation->{ input }{members} }){
          foreach my $member (keys %{ $operation->{ input }{members} } ) {
            $operation->{ input }{members}{ $member }->{perl_type} = $self->get_caller_class_type($operation->{ input }{members}{ $member });
          }
        }
      } else {
        die "Found an input that's not a structure " . Dumper($operation->{ input });
      }
      if      (not keys %{$operation->{ output }}){
        # There is no output class
      } elsif ($operation->{ output }{type} eq 'structure'){
        foreach my $member (keys %{ $operation->{ output }{members} } ) {
          $operation->{ output }{members}{ $member }->{perl_type} = $self->get_caller_class_type($operation->{ output }{members}{ $member });
        }
      } else {
        die "Found an output that's not a structure " . Dumper($operation->{ output });
      }
    }

    my $last_seen_inner_classes = scalar(keys %{ $self->inner_classes });
    $self->make_inner_classes();
    while ($last_seen_inner_classes != scalar(keys %{ $self->inner_classes })){
      $last_seen_inner_classes = scalar(keys %{ $self->inner_classes });
      $self->make_inner_classes();
    }
    foreach my $op_name (@{ $self->operations }) {
      my $class_name = $self->api . '::' . $op_name;
      my $output = $self->process_template(
        $self->callargs_class_template,
        { c => $self, op_name => $op_name }
      );
      $self->save_class($class_name, $output);
    }

    foreach my $op_name (@{ $self->operations }) {
      my $class_name = $self->api . '::' . $op_name . 'Result';
      my $output = $self->process_template(
        $self->callresult_class_template,
        { c => $self, op_name => $op_name }
      );
      $self->save_class($class_name, $output);
    }

    return $self->process_template($self->service_class_template, { c => $self });
  }

}

1;
