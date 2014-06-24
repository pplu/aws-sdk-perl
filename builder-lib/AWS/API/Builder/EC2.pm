use MooseX::Declare;
class AWS::API::Builder::EC2 {

  use Template;
  use Data::Printer;
  use Data::Dumper;
  use Data::Compare;

  has struct => (is => 'ro', required => 1);
  has api => (is => 'ro', required => 1);
  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ endpoint_prefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ api_version } });
  has operations => (is => 'ro', lazy => 1, default => sub { [ sort keys %{ $_[0]->struct->{operations} } ] });
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{ global_endpoint } ? 
                                                                   'AWS::API::SingleEndpointCaller':
                                                                   'AWS::API::RegionalEndpointCaller' 
                                                              } );
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Net::AWS::XMLResponse' });
  has signature_role => (is => 'ro', lazy => 1, default => sub { sprintf "Net::AWS::%sSignature", uc $_[0]->struct->{signature_version} } );
  has parameter_role => (is => 'ro', lazy => 1, default => sub { my $type = $_[0]->struct->{type}; substr($type,0,1) = uc substr($type,0,1); return "Net::AWS::${type}Caller" });
  has flattened_arrays => (is => 'rw', isa => 'Bool', default => sub { 0 });

  method operation (Str $op) { return $self->struct->{operations}->{ $op } or die "method doesn't exist $op" }

  method process_api {
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
      
    my $inner_output .= $self->make_inner_classes();

    my $class = q#
use AWS::API;
[% IF (c.enums.size) %]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[% END %]

[% inner_output %]

[%- FOREACH op_name IN c.operations %]
[%- operation = c.operation(op_name) %]
package [% c.api %]::[% operation.name %] {
  use Moose;
[% FOREACH param_name IN operation.input.members.keys.sort -%]
  has [% param_name %] => (is => 'ro', isa => '[% operation.input.members.$param_name.perl_type %]'
  [%- IF (operation.input.members.$param_name.xmlname) %], traits => ['NameInRequest'], request_name => '[% operation.input.members.$param_name.xmlname %]' [% END %]
  [%- IF (operation.input.members.$param_name.members.xmlname) %], traits => ['NameInRequest'], request_name => '[% operation.input.members.$param_name.members.xmlname %]' [% END %]
  [%- IF (operation.input.members.$param_name.required) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% c.api %]::[% op_name %]Result'[% END %]);
  class_has _result_key => (isa => 'Str', is => 'ro');
}
[%- END %]

[%- FOREACH op_name IN c.operations %]
[%- operation = c.operation(op_name) %]
[%- IF (operation.output.keys.size) %]
package [% c.api %]::[% operation.name %]Result {
  use Moose;
  with 'AWS::API::UnwrappedParser';
[% FOREACH param_name IN operation.output.members.keys.sort -%]
  has [% param_name %] => (is => 'ro', isa => '[% operation.output.members.$param_name.perl_type %]'
  [%- IF (operation.output.members.$param_name.xmlname) %], traits => ['Unwrapped'], xmlname => '[% operation.output.members.$param_name.xmlname %]'[% END %]
  [%- IF (operation.output.members.$param_name.members.xmlname and (operation.output.members.$param_name.members.xmlname != 'item')) %], traits => ['Unwrapped'], xmlname => '[% operation.output.members.$param_name.members.xmlname %]'[% END %]
  [%- IF (operation.output.members.$param_name.required) %], required => 1[% END %]);
[% END %]
}
[%- END %]
[%- END %]

package [% c.api %] {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => '[% c.service %]');
  has version => (is => 'ro', isa => 'Str', default => '[% c.version %]');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '[% c.flattened_arrays %]');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => '[% c.endpoint_role %]');
  class_has signature_role => (is => 'ro', isa => 'Str', default => '[% c.signature_role %]');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => '[% c.parameter_role %]');
  class_has response_role => (is => 'ro', isa => 'Str', default => '[% c.response_role %]');

  [% FOR op IN c.struct.operations.keys.sort %]
  [%- op_name = c.struct.operations.$op.name %]
  sub [% op_name %] {
    my $self = shift;
    return $self->do_call('[% c.api %]::[% op_name %]', @_);
  }
  [%- END %]
}
1;
#;
    return $self->process_template($class, { c => $self, 
                                             inner_output => $inner_output,
    });


    return $output;
  }

  method make_inner_classes {
    my $output = '';
  
    foreach my $inner_class (sort keys %{ $self->inner_classes }) {
      if ($self->inner_classes->{ $inner_class }->{type} eq 'map'){
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        $output .= "  with 'AWS::API::MapParser';\n";
        my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members});
        my $members = $self->inner_classes->{ $inner_class }->{keys}->{enum};
        next if (not defined $members);
        foreach my $param_name (sort @$members){
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          $output .= ");\n";
        }
        $output .= "}\n\n";
      } else {
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        $output .= "  with ('AWS::API::UnwrappedParser');\n";
 
        my $members = $self->inner_classes->{ $inner_class }->{members};
        foreach my $param_name (sort keys %$members){
          my $param_props = $members->{ $param_name };

          my $type;
          if ($param_props->{enum}) {
            $type = $self->api . "::" . $param_props->{shape_name};
            $self->register_enum($type, $param_props->{enum});
          } else {
            $type = eval { $self->get_caller_class_type($param_props) };
            if ($@) { die "In Inner Class: $inner_class: $@"; }
          }
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          if (defined $param_props->{xmlname}) {
            $output .= ", traits => ['Unwrapped'], xmlname => '$param_props->{xmlname}'";
          }
          $output .= ", required => 1" if (defined $param_props->{required} and $param_props->{required} == 1);
          $output .= ");\n";
        }
        $output .= "}\n\n";
      }
    }
  
    return $output;
  }

  has enums => (is => 'rw', isa => 'HashRef', default => sub { {} });

  method register_enum (Str $enum_class, ArrayRef $definition) {
    die "Already an Inner Class" if ($self->inner_classes->{ $enum_class });
    if (    defined $self->enums->{ $enum_class } 
        and not $self->enums_equal($self->enums->{ $enum_class }, $definition)
       ){
      die "Unequal defs";
    } else {
      $self->enums->{ $enum_class } = $definition;
    }
  }
  
  has inner_classes => (is => 'rw', isa => 'HashRef', default => sub { {} });

  method register_inner_class (Str $class_name, HashRef $definition) {
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

  method enums_equal ($left, $right) {
    return Compare(
      $left, $right
    );
  }

  method definitions_equal ($left, $right) {
    return Compare(
      [ sort keys %{ $left->{members} } ],
      [ sort keys %{ $right->{members} } ]
    );
  }

  method get_caller_class_type ($param_props) {
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
 
      if ($type !~ /^Aws\:\:/) {
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

  method process_template ($template, $vars) {
    my $tt = Template->new;
    my $output = '';
    $tt->process(\$template, $vars, \$output) || die $tt->error();
    return $output;
  }
}

1;
