package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;

  has struct => (is => 'ro', required => 1);
  has api => (is => 'ro', required => 1);

  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });

  has signature_role => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      sprintf "Paws::Net::%sSignature", uc $_[0]->struct->{metadata}{signatureVersion} 
    } 
  );

  has parameter_role => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $type = $_[0]->struct->{metadata}->{protocol}; 
      substr($type,0,1) = uc substr($type,0,1); 
      return "Paws::Net::${type}Caller" 
    },
  );

  has operations_struct => (
    is => 'ro', 
    lazy => 1, 
    default => sub { $_[0]->struct->{operations} },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      operations => 'keys',
      operation  => 'get',
      has_operation => 'exists',
    },
  );

  has shape_struct => (
    is => 'ro',
    lazy => 1,
    default => sub { $_[0]->struct->{shapes} },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      shape  => 'get',
      set_shape => 'set',
      has_shape => 'exists',
    },
  );

  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub required_in_shape {
    my ($self, $shape, $attribute) = @_;
    return (1 == (grep { $_ eq $attribute } @{ $shape->{ required } }));
  }

  sub shapename_for_operation_output {
    my ($self, $operation) = @_;

    my $op = $self->operation($operation);
    return if (not $op);

    my $shape = $op->{ output }->{ shape };
    return $shape;    
  }

  sub result_for_operation {
    my ($self, $operation) = @_;

    my $shape = $self->shapename_for_operation_output($operation);
    return if (not $shape);

    return $self->shape($shape);
  }

  sub shapename_for_operation_input {
    my ($self, $operation) = @_;

    my $op = $self->operation($operation);
    return if (not $op);

    my $shape = $op->{ input }->{ shape };
    return $shape;  
  }

  sub input_for_operation {
    my ($self, $operation) = @_;

    my $shape = $self->shapename_for_operation_input($operation);
    return if (not $shape);

    return $self->shape($shape);
  }

  use autodie;
  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    print "SAVE: $class_name\n";
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      open my $read, '<', $class_file_name;
      local $/=undef;
      my $read_content = <$read>;
      close $read;
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
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
    if (defined $self->shape($class_name) and not $self->definitions_equal($self->shape($class_name), $definition)){
      print "---- Registered Definition ----\n";
      my $temp = [ sort keys %{ $self->shape($class_name)->{members} } ];
      p $temp;
      print "---- New Definition ------\n";
      $temp = [ sort keys %{ $definition->{members} } ];
      p $temp;
      die "$class_name tried to register but was already registered";
    } else {
      $self->set_shape($class_name, $definition);
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
    my ($self, $for_shape) = @_;
    my $param_props = $self->shape($for_shape);

    my $type;
    if (not exists $param_props->{ type }) {
      die "Shape $for_shape doesn't have a type entry in def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      $self->flattened_arrays(1) if ($param_props->{ flattened });
      my $inner_type = $self->get_caller_class_type($param_props->{member}->{shape});
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # TODO: Paws::API::TimeStamp
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
      $type = $self->namespace_shape($for_shape);
      $self->make_inner_class($param_props, $type);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      $type = $self->namespace_shape($for_shape);
      $self->make_inner_class($param_props, $type);
    }
    if (not defined $type) {
      p $param_props;
      die "Unknown type: $for_shape $param_props->{ type }";
    }
    return $type;
  }

  sub namespace_shape {
    my ($self, $shape) = @_;
    return $self->api . '::' . $shape;
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

    foreach my $op (sort $self->operations){
      my $operation = $self->operation($op);
      my $api_call = $operation->{name};

      #
      # Parse inputs for the operation
      #
      if      (not keys %{$operation->{ input }}) {
        # There is no input inner classes in a class with no memebers
      } elsif (defined $operation->{input}->{shape}) {
        my $input_shape = $self->shape($operation->{input}->{shape});
        if (keys %{ $input_shape->{members} }){
          foreach my $member (keys %{ $input_shape->{members} }) {
            my $ishape = $self->shape($input_shape->{members}->{$member}->{shape});
            $ishape->{perl_type} = $self->get_caller_class_type($input_shape->{members}{ $member }{shape});
            $self->make_inner_class($ishape, $ishape->{perl_type});
          }
        }
      } else {
        die "Found an input that's not a structure " . Dumper($operation->{ input });
      }
      #
      # Parse outputs for the operation
      #
      if      (not keys %{$operation->{ output }}){
        # There is no output class
      } elsif (defined $operation->{output}->{shape}) {
        my $output_shape = $self->shape($operation->{output}->{shape});
        if (keys %{ $output_shape->{members} }){
          foreach my $member (keys %{ $output_shape->{members} }) {
            my $member_shape_name = $output_shape->{members}->{$member}->{shape};
            my $oshape = $self->shape($member_shape_name);
            $oshape->{perl_type} = $self->get_caller_class_type($member_shape_name);
          }
        }
      } else {
        die "Found an output that's not a structure " . Dumper($operation->{ output });
      }
    }

    foreach my $op_name ($self->operations) {
      next if (not defined $self->operation($op_name)->{name});
      my $class_name = $self->namespace_shape($self->operation($op_name)->{name});
      my $output = $self->process_template(
        $self->callargs_class_template,
        { c => $self, op_name => $op_name }
      );
      $self->save_class($class_name, $output);
    }

    foreach my $op_name ($self->operations) {
      next if (not defined $self->shapename_for_operation_output($op_name));
      my $class_name = $self->namespace_shape($self->shapename_for_operation_output($op_name));
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
