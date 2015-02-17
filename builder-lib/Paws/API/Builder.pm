package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;
  use File::Slurp;
  use JSON;

  has api => (is => 'ro', required => 1);

  has api_file => (is => 'ro', required => 1);

  has api_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->api_file);
  });

  has waiters_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\.normal\./.waiters./;
    return $file;
  });

  has waiters_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->waiters_file);
  });

  has paginators_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\.normal\./.paginators./;
    return $file;
  });

  has paginators_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->paginators_file)->{ pagination };
  });

  sub get_paginator_name {
    my ($self,$name) = @_;
    return $name if ($name =~ s/^Describe/DescribeAll/);
    return $name if ($name =~ s/^List/ListAll/);
    return $name if ($name =~ s/^Query/QueryAll/);
    return 'GetAllGroups' if ($name eq 'GetGroup');
    return 'DownloadAllDBLogFilePortions' if ($name eq 'DownloadDBLogFilePortion');
    return 'SelectAll' if ($name eq 'Select');
    return 'GetAllWorkflowExecutionHistories' if ($name eq 'GetWorkflowExecutionHistory');
    return 'ScanAll' if ($name eq 'Scan');
    return 'PollForAllDecisionTasks' if ($name eq 'PollForDecisionTask');
    die "Please help me generate a good name for the paginator $name";
  }

  has encoders_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\.normal\./.encoders./;
    return $file;
  });

  has encoders_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->encoders_file)->{ encoding };
  });


  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });

  has signature_role => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      sprintf "Paws::Net::%sSignature", uc $_[0]->api_struct->{metadata}{signatureVersion} 
    } 
  );

  has parameter_role => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $type = $_[0]->api_struct->{metadata}->{protocol}; 
      substr($type,0,1) = uc substr($type,0,1); 
      return "Paws::Net::${type}Caller" 
    },
  );

  has operations_struct => (
    is => 'ro', 
    lazy => 1, 
    default => sub { $_[0]->api_struct->{operations} },
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
    default => sub { $_[0]->api_struct->{shapes} },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      shape  => 'get',
      set_shape => 'set',
      has_shape => 'exists',
    },
  );

  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub _load_json_file {
    my ($self,$file) = @_;
    return {} if (not -e $file);
    return from_json(read_file($file));
  }

  has class_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% c.shapename_for_operation_output(op_name) %]

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% member.perl_type %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]
[% END %]

=cut
#);

  has callclass_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% operation.name %] - Arguments for method [% operation.name %] on [% c.api %]

=head1 DESCRIPTION

This class represents the parameters used for calling the method [% operation.name %] on the 
[% c.api_struct.metadata.serviceFullName %] service. Use the attributes of this class
as arguments to method [% operation.name %].

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to [% operation.name %].

As an example:

  $service_obj->[% operation.name %](Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% member.perl_type %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]

[% END %]

=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for [% operation.name %] in [% c.api %]

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  has service_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %] - Perl Interface to AWS [% c.api_struct.metadata.serviceFullName %]

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION

[% c.doc_for_service() %]

=head1 METHODS
[% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
=head2 [% op_name %]()

  Arguments described in: L<[% c.api %]::[% op_name %]>

  Returns: [% out_shape = c.shapename_for_operation_output(op_name); IF (out_shape) %]L<[% c.api %]::[% out_shape %]>[% ELSE %]nothing[% END %]

  [% c.doc_for_method(op_name) %]

[% END %]
=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);


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

    my $class_out = $self->process_template($self->service_class_template, { c => $self });
    $self->save_class($self->api, $class_out);
  }

  sub doc_for_shape {
    my ($self, $shape) = @_;
    my $doc = $shape->{documentation};
    if (not $doc) {
      warn "No documentation for shape $shape in " . $self->api;
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_param_name_in_shape {
    my ($self, $shape, $param_name) = @_;
    my $doc = $shape->{members}->{$param_name}->{documentation};
    if (not $doc) {
      warn "No documentation for $param_name in " . $self->api;
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_service {
    my ($self) = @_;
    if (not $self->api_struct->{documentation}) {
      warn "No documentation for service " . $self->api;
      return '';
    }
    return $self->html_to_pod($self->api_struct->{documentation});
  }
  sub doc_for_method {
    my ($self, $method) = @_;
    my $op = $self->operation($method);
    if (not $op->{ documentation }) {
      warn "No documentation for " . $self->api . "::" . $method;
      return '';
    }
    return $self->html_to_pod($op->{ documentation });
  }

  sub html_to_pod {
    my ($self, $html) = @_;
    use Pod::HTML2Pod;
    my $pod = Pod::HTML2Pod::convert(
      content => $html,
      a_name => 0,
      a_href => 0,
      debug => 0,
    );
    $pod =~ s/=pod//;
    $pod =~ s/=cut$//m;
    $pod =~ s/#.*$//mg;
    return $pod;
  }
}

1;
