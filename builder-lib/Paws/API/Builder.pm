package Paws::API::Builder {
  use Moose;

  use Data::Compare;
  use Data::Dumper;
  use Data::Printer;
  use Template;
  use File::Slurper 'read_binary';
  use JSON::MaybeXS;
  use v5.10;

  use Paws::API::RegionBuilder; 

  has api => (is => 'ro', required => 1);

  sub service_name {
    my $self = shift;
    my $svc = $self->api;
    $svc =~ s/^.*\:\://;
    return $svc;
  }

  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}->{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => 'Paws::API::EndpointResolver' );

  has api_file => (is => 'ro', required => 1);

  has api_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->api_file);
  });

  has waiters_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/waiters-2./;
    return $file;
  });

  has waiters_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->waiters_file);
  });

  has paginators_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/paginators-1./;
    return $file;
  });

  has paginators_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->paginators_file)->{ pagination };
  });

  has encoders_file => (is => 'ro', lazy => 1, default => sub {
    my $file = shift->api_file;
    $file =~ s/\/service-2\./\/encoders-1./;
    return $file;
  });

  has encoders_struct => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_load_json_file($self->encoders_file)->{ encoding };
  });

  sub get_paginator_name {
    my ($self,$name) = @_;
    return $name if ($name =~ s/^Describe/DescribeAll/);
    return $name if ($name =~ s/^List/ListAll/);
    return $name if ($name =~ s/^Query/QueryAll/);
    return $name if ($name =~ s/^Get/GetAll/);
    return 'GetAllGroups' if ($name eq 'GetGroup');
    return 'DownloadAllDBLogFilePortions' if ($name eq 'DownloadDBLogFilePortion');
    return 'SelectAll' if ($name eq 'Select');
    return 'GetAllWorkflowExecutionHistories' if ($name eq 'GetWorkflowExecutionHistory');
    return 'ScanAll' if ($name eq 'Scan');
    return 'PollForAllDecisionTasks' if ($name eq 'PollForDecisionTask');
    die "Please help me generate a good name for the paginator $name";
  }

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

  has endpoints_file => (is => 'ro', isa => 'Str', default => sub {
    'botocore/botocore/data/_endpoints.json';
  });

  has service_endpoint_rules => (is => 'ro', lazy => 1, default => sub { 
    my $self = shift; 
    my $s = Paws::API::RegionBuilder->new( 
      rules    => $self->endpoints_file, 
      service  => $self->service, 
    ); 
    $s->region_accessor; 
  });

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
    default => sub { 
      my $self = shift;
      my $shapes = $self->api_struct->{shapes};
      return $shapes;
    },
    isa => 'HashRef',
    traits => [ 'Hash' ],
    handles => {
      shape  => 'get',
      set_shape => 'set',
      has_shape => 'exists',
      shapes => 'keys',
    },
  );

  has _input_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $sh_name = $operation->{ input }->{ shape };
        if (defined $sh_name){
          my $shape = $self->shape($sh_name);
          $shape = $self->capitalize_shape($shape);
          $ret->{ $sh_name } = $shape
        }
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      input_shape => 'get',
      input_shapes => 'keys',
      is_input_shape => 'exists',
    }
  );

  has _output_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $sh_name = $operation->{ output }->{ shape };
        if (defined $sh_name){
          my $shape = $self->shape($sh_name);
          $shape = $self->capitalize_shape($shape);
          $ret->{ $sh_name } = $shape
        }
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      output_shape => 'get',
      output_shapes => 'keys',
      is_output_shape => 'exists',
    }
  );

  has _exception_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);
        $ret->{ $shape_name } = $shape if (defined $shape->{ exception });
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      exception_shape => 'get',
      exception_shapes => 'keys',
      is_exception_shape => 'exists',
    }
  );

  sub capitalize {
    my ($self, $shape) = @_;
    substr($shape,0,1) = uc(substr($shape,0,1));
    return $shape;
  }

  sub capitalize_shape {
    my ($self, $shape) = @_;

    if ($shape->{ type } eq 'structure'){
      foreach my $member (keys %{ $shape->{ members } }){
        next if ($member =~ m/^[A-Z]/); # if we already start with capital, don't touch
        my $s = delete $shape->{ members }->{ $member };
        $s->{ locationName } = $member;
        $shape->{ members }->{ $self->capitalize($member) } = $s;
      }
      $shape->{ required } = [ map { $self->capitalize($_) } @{ $shape->{ required } } ];
    }

    return $shape;
  };

  has _inner_shapes => (
    is => 'ro',
    lazy => 1,
    isa => 'HashRef',
    default => sub { 
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);

        $self->capitalize_shape($shape);

        $ret->{ $shape_name } = $shape if (( $shape->{type} eq 'structure' or $shape->{type} eq 'map')
                                           and not $self->is_exception_shape($shape_name)
                                           and not $self->is_output_shape($shape_name)
                                           and not $self->is_input_shape($shape_name)
                                          );
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      inner_shape => 'get',
      inner_shapes => 'keys',
      is_inner_shape => 'exists',
    }
  );

  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  sub _load_json_file {
    my ($self,$file) = @_;
    return {} if (not -e $file);
    return decode_json(read_binary($file));
  }

  has class_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% c.shapename_for_operation_output(op_name) %]

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% c.perl_type_to_pod(member.perl_type) %]

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

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to [% operation.name %].

As an example:

  $service_obj->[% operation.name %](Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% c.perl_type_to_pod(member.perl_type) %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]

[% END %]

=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method [% operation.name %] in L<[% c.api %]>

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

  my $obj = Paws->service('[% c.service_name %]');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    \# if Arg3 is an object, the HashRef will be used as arguments to the constructor
    \# of the arguments type
    Arg3 => { Att1 => 'Val1' },
    \# if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    \# the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

[% c.doc_for_service() %]

=head1 METHODS
[% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
=head2 [% op_name %](
[%- out_shape = c.input_for_operation(op_name) %]
[%- req_list = out_shape.required.sort %]
[%- FOREACH out_name IN req_list.sort -%]
  [%- member = c.shape(out_shape.members.$out_name.shape) -%]
  [%- out_name %] => [% c.perl_type_to_pod(member.perl_type) %]
  [%- IF (NOT loop.last) %], [% END %]
[%- END %]
[%- opt_list = c.optional_params_in_shape(out_shape) %]
[%- IF (opt_list.size > 0) %]
[%- IF (req_list.size > 0) %], [% END %][
[%- FOREACH out_name IN opt_list.sort %]
  [%- member = c.shape(out_shape.members.$out_name.shape) -%]
  [%- out_name %] => [% c.perl_type_to_pod(member.perl_type) %]
  [%- IF (NOT loop.last) %], [% END %]
[%- END %]]
[%- END %])

Each argument is described in detail in: L<[% c.api %]::[% op_name %]>

Returns: [% out_shape = c.shapename_for_operation_output(op_name); IF (out_shape) %]a L<[% c.api %]::[% out_shape %]> instance[% ELSE %]nothing[% END %]

  [% c.doc_for_method(op_name) %]

[% END %]
=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  has innerclass_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% inner_class %]

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a [% inner_class %] object:

  $service_obj->Method(Att1 => { [% shape.members.keys.sort.0 %] => $value, ..., [% shape.members.keys.sort.-1 %] => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an [% inner_class %] object:

  $result = $service_obj->Method(...);
  $result->Att1->[% shape.members.keys.sort.0 %]

=head1 DESCRIPTION

[% desc = c.doc_for_shape(iclass); IF(desc); desc; ELSE; 'This class has no description'; END %]

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% c.perl_type_to_pod(member.perl_type) %]

  [% c.doc_for_param_name_in_shape(shape, param_name) %]

[% END %]

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<[% c.api %]>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  sub required_in_shape {
    my ($self, $shape, $attribute) = @_;
    return (1 == (grep { $_ eq $attribute } @{ $shape->{ required } }));
  }

  sub optional_params_in_shape {
    my ($self, $shape) = @_;
    return [] if (not $shape);
    my $req = $shape->{ required } || [];
    my %required = map { ($_ => 1) } @$req;
    return [ grep { not defined $required{ $_ } } keys %{ $shape->{ members } } ];
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

    return $self->output_shape($shape);
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

    return $self->input_shape($shape);
  }

  use autodie;
  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      my $read_content = read_text($class_file_name);
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

  use Carp;

  sub get_caller_class_type {
    my ($self, $for_shape) = @_;
    my $param_props = $self->shape($for_shape);

    my $type;
    if (not exists $param_props->{ type }) {
      confess "Shape $for_shape doesn't have a type entry in def " . Dumper($param_props);
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'list') {
      $self->flattened_arrays(1) if ($param_props->{ flattened });
      die "Invalid list type: " . Dumper($param_props) if (not defined $param_props->{member}->{shape});
      my $inner_type = $self->get_caller_class_type($param_props->{member}->{shape});
      $type = "ArrayRef[$inner_type]";
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'timestamp') {
      # TODO: Paws::API::TimeStamp
      $type = 'Str';
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'long') {
      #TODO: Check
      $type = 'Int';
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
    } elsif (exists $param_props->{ type } and $param_props->{ type } eq 'structure') {
      $type = $self->namespace_shape($for_shape);
    }
    if (not defined $type) {
      p $param_props;
      die "Unknown type: $for_shape $param_props->{ type }";
    }
    return $type;
  }

  sub namespace_shape {
    my ($self, $shape) = @_;
    substr($shape,0,1) = uc(substr($shape,0,1));
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
    $self->validate_shapes;

    foreach my $shape_name ($self->shapes) {
      $self->shape($shape_name)->{perl_type} = $self->get_caller_class_type($shape_name);
    }

    foreach my $op_name ($self->operations) {
      if (defined $self->operation($op_name)->{name}) {
        my $class_name = $self->namespace_shape($op_name);
        my $output = $self->process_template(
          $self->callargs_class_template,
          { c => $self, op_name => $op_name }
        );
        $self->save_class($class_name, $output);
      }
      if (defined $self->shapename_for_operation_output($op_name)) {
        my $class_name = $self->namespace_shape($self->shapename_for_operation_output($op_name));
        my $output = $self->process_template(
          $self->callresult_class_template,
          { c => $self, op_name => $op_name }
        );
        $self->save_class($class_name, $output);
      }
    }

    foreach my $shape_name ($self->inner_shapes) {
      my $shape = $self->shape($shape_name);
      my $class_name = $self->namespace_shape($shape_name);
      my $output = $self->make_inner_class($shape, $class_name);
      $self->save_class($class_name, $output);
    }

    my $class_out = $self->process_template($self->service_class_template, { c => $self });
    $self->save_class($self->api, $class_out);
  }

  sub validate_shapes {
    my $self = shift;
    foreach my $shape_name ($self->shapes) {
      my $shape = $self->shape($shape_name);
      next  unless(defined $shape->{ members });
      foreach my $member_name (keys %{ $shape->{members} }) {
        my $member = $shape->{members}->{$member_name};
        die "Shape '$shape_name' has a member '$member_name' with an undefined shape"
            unless(defined $member->{shape});
        die "Shape '$shape_name' has a member '$member_name' with an unrecognized shape: '$member->{shape}'"
            unless ($self->has_shape($member->{shape}));
        }
    }
  }

  sub perl_type_to_pod {
    my ($self, $type) = @_;
    if ($type =~ m/^(\w+Ref)\[(.+?)\]$/) {
      my ($param_type, $inner_type) = ($1, $2);
      return "$param_type\[L<$inner_type>\]" if ($type =~ m/\:\:/);
      return $type;
    } else {
      return "L<$type>" if ($type =~ m/\:\:/);
      return $type;  
    }
  }

  sub doc_for_shape {
    my ($self, $shape) = @_;
    return if (not $shape);
    my $doc = $shape->{documentation};
    if (not $doc) {
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_param_name_in_shape {
    my ($self, $shape, $param_name) = @_;
    my $doc = $shape->{members}->{$param_name}->{documentation};
    if (not $doc) {
      return '';
    }
    return $self->html_to_pod($doc);
  }

  sub doc_for_service {
    my ($self) = @_;
    if (not $self->api_struct->{documentation}) {
      return '';
    }
    return $self->html_to_pod($self->api_struct->{documentation});
  }
  sub doc_for_method {
    my ($self, $method) = @_;
    my $op = $self->operation($method);
    if (not $op->{ documentation }) {
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
    $pod =~ s/^(?:\s*\n)*//;
    $pod =~ s/(?:\s*\n)*$//;
    $pod .= "\n" if ($pod =~ m/=back$/);
    return $pod;
  }

  has map_enum_documentation_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% inner_class %]

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a [% inner_class %] object:

  $service_obj->Method(Att1 => { [% keys_shape.enum.sort.0 %] => $value, ..., [% keys_shape.enum.sort.-1 %] => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an [% inner_class %] object:

  $result = $service_obj->Method(...);
  $result->Att1->[% keys_shape.enum.sort.0 %]

=head1 DESCRIPTION

[% desc = c.doc_for_shape(iclass); IF(desc); desc; ELSE; 'This class has no description'; END %]

=head1 ATTRIBUTES

[% FOREACH param_name IN keys_shape.enum.sort -%]
=head2 [% param_name %] => [% c.perl_type_to_pod(c.get_caller_class_type(iclass.value.shape)) %]

[% END %]

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<[% c.api %]>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  has map_enum_template => (is => 'ro', isa => 'Str', default => q#
[%- -%]
package [% inner_class %];
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => '[% iclass.key.locationName || 'key' %]');
  class_has xml_values =>(is => 'ro', default => '[% iclass.value.locationName || 'value' %]');

[% FOREACH param_name=keys_shape.enum.sort -%]
  has [% param_name %] => (is => 'ro', isa => '[% c.get_caller_class_type(iclass.value.shape) %]');
[% END -%]
1;
[% c.map_enum_documentation_template | eval %]
#);

  has map_str_to_whatever_template => (is => 'ro', isa => 'Str', default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% inner_class %]

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a [% inner_class %] object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an [% inner_class %] object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

[% desc = c.doc_for_shape(iclass); IF(desc); desc; ELSE; 'This class has no description'; END %]

=head1 ATTRIBUTES

=head2 Map => [% c.perl_type_to_pod(c.get_caller_class_type(iclass.value.shape)) %]

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<[% c.api %]>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
#);

  has map_str_to_native_template => (is => 'ro', isa => 'Str', default => q#
[%- -%]
package [% inner_class %];
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => '[% iclass.key.locationName || 'key' %]');
  class_has xml_values =>(is => 'ro', default => '[% iclass.value.locationName || 'value' %]');

  has Map => (is => 'ro', isa => '[% map_class %]');
1;
[% c.map_str_to_whatever_template | eval %]
#);

  has map_str_to_obj_template => (is => 'ro', isa => 'Str', default => q#
[%- -%]
package [% inner_class %];
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => '[% iclass.key.locationName || 'key' %]');
  class_has xml_values =>(is => 'ro', default => '[% iclass.value.locationName || 'value' %]');

  has Map => (is => 'ro', isa => '[% map_class %]');
1;
[% c.map_str_to_whatever_template | eval %]
#);

  has object_template => (is => 'ro', isa => 'Str', default => q#
[%- -%]
package [% inner_class %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- traits = [] -%]
  [%- member_shape_name = shape.members.$param_name.shape %]
  [%- member = c.shape(member_shape_name) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName); traits.push('Unwrapped','NameInRequest') %], xmlname => '[% shape.members.${param_name}.locationName %]', request_name => '[% shape.members.${param_name}.locationName %]'[% END %]
  [%- IF (shape.members.$param_name.streaming == 1); traits.push('ParamInBody'); END %]
  [%- encoder = c.encoders_struct.$member_shape_name; IF (encoder); traits.push('JSONAttribute') %], decode_as => '[% encoder.encoding %]', method => '[% encoder.alias %]'[% END %]
  [%- IF (member.members.xmlname and (member.members.xmlname != 'item')) %], traits => ['Unwrapped'], xmlname => '[% member.members.xmlname %]'[% END %]
  [%- IF (traits.size) %], traits => [[% FOREACH trait=traits %]'[% trait %]'[% IF (NOT loop.last) %],[% END %][% END %]][% END -%]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END -%]
1;
[% iclass=shape; c.innerclass_documentation_template | eval %]
#);

  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;

    return if (not defined $inner_class);

    my $output = '';
    if ($iclass->{type} eq 'map') {
      my $keys_shape = $self->shape($iclass->{key}->{shape});
      my $values_shape = $self->shape($iclass->{value}->{shape});

      if ($keys_shape->{enum}){
        $self->process_template($self->map_enum_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'string') {
        $self->process_template($self->map_str_to_native_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Str]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'boolean') {
        $self->process_template($self->map_str_to_native_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Str]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'float') {
        $self->process_template($self->map_str_to_native_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => 'HashRef[Num]' });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'list') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});
        $self->process_template($self->map_str_to_native_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'structure') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});
        $self->process_template($self->map_str_to_obj_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
      } elsif ($keys_shape->{type} eq 'string' and $values_shape->{type} eq 'map') {
        my $type = $self->get_caller_class_type($iclass->{value}->{shape});
        $self->process_template($self->map_str_to_obj_template, { c => $self, iclass => $iclass, inner_class => $inner_class, keys_shape => $keys_shape, values_shape => $values_shape, map_class => "HashRef[$type]" });
      } else {
        die "Unrecognized Map type in query API " . Dumper($iclass) . ' keys_shape ' . Dumper($keys_shape) . ' values_shape' . Dumper($values_shape);
      }
    } elsif ($iclass->{type} eq 'structure') {
      $self->process_template($self->object_template, { c => $self, shape => $iclass, inner_class => $inner_class });
    }
  }
}

1;
