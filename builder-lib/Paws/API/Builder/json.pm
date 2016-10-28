package Paws::API::Builder::json {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has target_prefix => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ targetPrefix } });
  has json_version => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $ver = $_[0]->api_struct->{metadata}->{ jsonVersion }; 
      return sprintf("%.1f", $ver) 
    }
  );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::JsonResponse' });

  has '+map_enum_template' => (default => q#
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

  has '+map_str_to_native_template' => (default => q#
[%- -%]
package [% inner_class %];
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => '[% map_class %]');
1;
[% c.map_str_to_whatever_template | eval %]
#);

  has '+map_str_to_obj_template' => (default => q#
[%- -%]
package [% inner_class %];
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => '[% map_class %]');
1;
[% c.map_str_to_whatever_template | eval %]
#);


  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName && shape.members.${param_name}.locationName != param_name) %], traits => ['NameInRequest'], request_name => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (shape.members.$param_name.streaming == 1) %], traits => ['ParamInBody'][% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro', default => '
    [%- IF (operation.output.keys.size) -%]
      [%- c.api %]::[% c.shapename_for_operation_output(op_name) -%]
    [%- ELSE -%]Paws::API::Response[% END -%]');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;
[% c.callclass_documentation_template | eval %]
#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.result_for_operation(op_name) %]
[%- shape = c.result_for_operation(op_name) %]
[%- IF (shape) %]
package [% c.api %]::[% c.shapename_for_operation_output(op_name) %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName) %], traits => ['Unwrapped'], xmlname => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (shape.members.$param_name.streaming == 1) %], traits => ['ParamInBody'][% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  has _request_id => (is => 'ro', isa => 'Str');
[%- END %]
[% c.class_documentation_template | eval %]
1;#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
[%- IF (c.enums.size) -%]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[%- END -%]
package [% c.api %];
  use Moose;
  sub service { '[% c.service %]' }
  sub version { '[% c.version %]' }
  sub target_prefix { '[% c.target_prefix %]' }
  sub json_version { "[% c.json_version %]" }
  has max_attempts => (is => 'ro', isa => 'Int', default => [% c.service_max_attempts %]);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => '[% c.service_retry.base %]', type => '[% c.service_retry.type %]', growth_factor => [% c.service_retry.growth_factor %] }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  [%- FOREACH key IN c.retry.policies.keys %]
     [%- policy = c.retry.policies.$key.applies_when.response %]
     [%- IF (policy.service_error_code) %]
       sub { defined $_[0]->http_status and $_[0]->http_status == [% policy.http_status_code %] and $_[0]->code eq '[% policy.service_error_code %]' },
     [%- ELSIF (policy.crc32body) %]
       sub { $_[0]->code eq 'Crc32Error' },
     [%- ELSE %]
       [% THROW 'Unknown retry type' %]
     [%- END %]
  [%- END %]
  ] });

  with 'Paws::API::Caller', '[% c.endpoint_role %]', '[% c.signature_role %]', '[% c.parameter_role %]', '[% c.response_role %]';

  [%- c.service_endpoint_rules %]
  [% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
  sub [% op_name %] {
    my $self = shift;
    my $call_object = $self->new_with_coercions('[% c.api %]::[% op_name %]', @_);
    return $self->caller->do_call($self, $call_object);
  }
  [%- END %]
  [%- FOR op IN [] \#c.paginators_struct.keys.sort %]
  sub [% c.get_paginator_name(op) %] {
    [%- paginator = c.paginators_struct.$op %]
    my $self = shift;

    my $result = $self->[% op %](@_);
    my $array = [];
    push @$array, @{ $result->[% paginator.result_key %] };

    while ($result->[% paginator.output_token %]) {
      $result = $self->[% op %](@_, [% paginator.input_token %] => $result->[% paginator.output_token %]);
      push @$array, @{ $result->[% paginator.result_key %] };
    }

    return '[% c.api %]::[% op %]'->_returns->new([% paginator.result_key %] => $array);
  }
  [%- END %]

  sub operations { qw/[% FOR op IN c.api_struct.operations.keys.sort; op _ ' '; END %]/ }

1;
[% c.service_documentation_template | eval %]
#);

}
1;
