package Paws::API::Builder::EC2 {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{metadata}->{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{metadata}->{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{metadata}->{ globalEndpoint } ? 
                                                                   'Paws::API::SingleEndpointCaller':
                                                                   'Paws::API::RegionalEndpointCaller' 
                                                              } );
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::XMLResponse' });

  has '+parameter_role' => (
    default => sub {
      return "Paws::Net::QueryCaller"
    },
  );

  has '+flattened_arrays' => (default => '0');

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %] {
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName) %], traits => ['NameInRequest'], request_name => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (member.members.xmlname) %], traits => ['NameInRequest'], request_name => '[% member.members.xmlname %]' [% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% c.api %]::[% c.shapename_for_operation_output(op_name) %]'[% END %]);
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.result_for_operation(op_name) %]
[%- shape = c.result_for_operation(op_name) %]
[%- IF (shape) %]
package [% c.api %]::[% c.shapename_for_operation_output(op_name) %] {
  use Moose;
  with 'Paws::API::UnwrappedParser';
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName) %], traits => ['Unwrapped'], xmlname => '[% shape.members.${param_name}.locationName %]'[% END %]
  [%- IF (member.members.xmlname and (member.members.xmlname != 'item')) %], traits => ['Unwrapped'], xmlname => '[% member.members.xmlname %]'[% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
}
[%- END %]
1;#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
use Paws::API;
[% IF (c.enums.size) %]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[% END %]

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
[% c.service_documentation_template | eval %]
#);


  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;
  
      my $output = '';
      if ($iclass->{type} eq 'map'){
        my $keys_shape = $self->shape($iclass->{key}->{shape});
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        $output .= "  with 'Paws::API::MapParser';\n";
        my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members});
        my $members = $keys_shape->{enum};
        next if (not defined $members);
        foreach my $param_name (sort @$members){
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        $self->save_class($inner_class, $output);
      } elsif($iclass->{type} eq 'structure') {
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
 
        my $members = $iclass->{members};
        foreach my $param_name (sort keys %$members){
          my $param_props = $self->shape($members->{ $param_name }->{ shape });

          my $callit = $self->get_caller_class_type($members->{ $param_name }->{ shape });
          $self->make_inner_class($param_props,$callit);

          my $type;
          if ($param_props->{enum}) {
            # Enums passed to Str because documentation tends to have inconsistencies 
            #$type = $self->api . "::" . $param_props->{shape_name};
            #$self->register_enum($type, $param_props->{enum});
            $type = 'Str';
          } else {
            $type = eval { $self->get_caller_class_type($members->{ $param_name }->{ shape }) };
            if ($@) { die "In Inner Class: $inner_class: $@"; }
          }
          $output .= "  has $param_name => (is => 'ro', isa => '$type'";
          if (defined $members->{ $param_name }->{locationName}) {
            $output .= ", traits => ['Unwrapped'], xmlname => '$members->{ $param_name }->{locationName}'";
          }
          $output .= ", required => 1" if ($self->required_in_shape($iclass,$param_name));
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        $self->save_class($inner_class, $output);
      }
    }
}

1;
