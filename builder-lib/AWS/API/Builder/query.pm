package AWS::API::Builder::query {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;
  extends 'AWS::API::Builder';

  has service => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ endpoint_prefix } });
  has version => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ api_version } });
  has operations => (is => 'ro', lazy => 1, default => sub { [ sort keys %{ $_[0]->struct->{operations} } ] });
  has endpoint_role => (is => 'ro', lazy => 1, default => sub { defined $_[0]->struct->{ global_endpoint } ? 
                                                                   'AWS::API::SingleEndpointCaller':
                                                                   'AWS::API::RegionalEndpointCaller' 
                                                              } );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Net::AWS::XMLResponse' });
  has signature_role => (is => 'ro', lazy => 1, default => sub { sprintf "Net::AWS::%sSignature", uc $_[0]->struct->{signature_version} } );
  has parameter_role => (is => 'ro', lazy => 1, default => sub { my $type = $_[0]->struct->{type}; substr($type,0,1) = uc substr($type,0,1); return "Net::AWS::${type}Caller" });

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
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
  class_has _result_key => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% op_name %]Result'[% END %]);
}
1;
#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- IF (operation.output.keys.size) %]
package [% c.api %]::[% operation.name %]Result {
  use Moose;
  with 'AWS::API::ResultParser';
[% FOREACH param_name IN operation.output.members.keys.sort -%]
  has [% param_name %] => (is => 'ro', isa => '[% operation.output.members.$param_name.perl_type %]'
  [%- IF (operation.output.members.$param_name.members.xmlname) %], traits => ['Unwrapped'], xmlname => '[% operation.output.members.$param_name.members.xmlname %]'[% END %]
  [%- IF (operation.output.members.$param_name.xmlname) %], traits => ['Unwrapped'], xmlname => '[% operation.output.members.$param_name.xmlname %]'[% END %]
  [%- IF (operation.output.members.$param_name.required) %], required => 1[% END %]);
[% END %]
}
[%- END %]
1;#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
use AWS::API;
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
1;#);

  sub make_inner_classes {
    my $self = shift;
  
    foreach my $inner_class (sort keys %{ $self->inner_classes }) {
      my $output = '';
      if ($self->inner_classes->{ $inner_class }->{type} eq 'map'){
        if ($self->inner_classes->{ $inner_class }->{keys}->{enum}){
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'AWS::API::MapParser';\n";
          my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members});

          my $members = $self->inner_classes->{ $inner_class }->{keys}->{enum};
          foreach my $param_name (sort @$members){
            $output .= "  has $param_name => (is => 'ro', isa => '$type'";
            $output .= ");\n";
          }
          $output .= "}\n1\n";
        } elsif ($self->inner_classes->{ $inner_class }->{members}->{type} eq 'string') {
          $output .= "package $inner_class {\n"; 
          $output .= "  use Moose;\n";
          $output .= "  with 'AWS::API::StrToStrMapParser';\n";
          $output .= "  has Map => (is => 'ro', isa => 'HashRef[Str]');\n";
          $output .= "}\n1\n";
        } elsif ($self->inner_classes->{ $inner_class }->{members}->{type} eq 'structure') {
          my $type = $self->get_caller_class_type($self->inner_classes->{ $inner_class }->{members});
          $output .= "package $inner_class {\n";
          $output .= "  use Moose;\n";
          $output .= "  with 'AWS::API::StrToObjMapParser';\n";
          $output .= "  has Map => (is => 'ro', isa => 'HashRef[$type]');\n";
          $output .= "}\n1\n";
        } else {
          die "Unrecognized Map type" . Dumper($self->inner_classes->{ $inner_class });
        }
      } else {
        $output .= "package $inner_class {\n";
        $output .= "  use Moose;\n";
        my $members = $self->inner_classes->{ $inner_class }->{members};
        foreach my $param_name (sort keys %$members){
          my $param_props = $members->{ $param_name };

          my $type;
          if ($param_props->{enum}) {
            # Enums passed to Str because documentation tends to have inconsistencies 
            #$type = $self->api . "::" . $param_props->{shape_name};
            #$self->register_enum($type, $param_props->{enum});
            $type = 'Str';
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
        $output .= "}\n1\n";
      }
      $self->save_class($inner_class, $output);
    }
  }
}

1;
