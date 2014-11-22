package Paws::API::Builder::json {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{metadata}{ endpointPrefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{metadata}{ apiVersion } });
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{metadata}{ globalEndpoint } ? 
                                                                   'Paws::API::SingleEndpointCaller':
                                                                   'Paws::API::RegionalEndpointCaller' 
                                                              } );
  has target_prefix => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{metadata}{ targetPrefix } });
  has json_version => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $ver = $_[0]->struct->{metadata}->{ jsonVersion }; 
      return sprintf("%.1f", $ver) 
    }
  );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::JsonResponse' });

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %] {
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (member.xmlname) %], traits => ['NameInRequest'], request_name => '[% member.xmlname %]' [% END %]
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
  with 'Paws::API::ResultParser';
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (member.members.xmlname) %], traits => ['Unwrapped'], xmlname => '[% member.members.xmlname %]'[% END %]
  [%- IF (member.xmlname) %], traits => ['Unwrapped'], xmlname => '[% member.xmlname %]'[% END %]
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
  has target_prefix => (is => 'ro', isa => 'Str', default => '[% c.target_prefix %]');
  has json_version => (is => 'ro', isa => 'Str', default => "[% c.json_version %]");

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
#);

  sub make_inner_class {
    my $self = shift;
    my $iclass = shift;
    my $inner_class = shift;

    return if (not defined $inner_class);

      my $output = '';
      if ($iclass->{type} eq 'map'){
        my $keys_shape = $self->shape($iclass->{key}->{shape});
        if ($keys_shape->{enum}){
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::MapParser';\n";
          my $type = $self->get_caller_class_type($iclass->{value}->{shape});
          my $members = $keys_shape->{enum};
          foreach my $param_name (sort @$members){
            $output .= "  has $param_name => (is => 'ro', isa => '$type'";
            $output .= ");\n";
          }
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'string') {
          $output .= "package $inner_class {\n"; 
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToStrMapParser';\n";
          $output .= "  has Map => (is => 'ro', isa => 'HashRef[Str]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'structure') {
          my $type = $self->get_caller_class_type($iclass->{members});
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToObjMapParser';\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } elsif ($keys_shape->{type} eq 'list') {
          my $type = $self->get_caller_class_type($iclass->{members});
          warn "Take a look at $inner_class (has $type)\n";
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'Paws::API::StrToObjMapParser';\n";

          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1;\n";
          $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
        } else {
          die "Unrecognized Map type in json API " . Dumper($iclass);
        }
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
          if (defined $param_props->{xmlname}) {
            $output .= ", traits => ['Unwrapped'], xmlname => '$param_props->{xmlname}'";
          }
          $output .= ", required => 1" if ($self->required_in_shape($iclass,$param_name));
          $output .= ");\n";
        }
        $output .= "}\n1;\n";
        $self->save_class($inner_class, $output) if ($inner_class !~ m/ArrayRef/);
      }
    }
}

1;
