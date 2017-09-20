package Paws::API::Builder::restxml {

  use Moose;
  extends 'Paws::API::Builder';

  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has parameter_role => (is => 'ro', lazy => 1, default => sub { return "Paws::Net::RestXmlCaller" });

  has '+class_documentation_template' => (default => q#
\#\#\# main pod documentation begin \#\#\#

=head1 NAME

[% c.api %]::[% op_name %]

=head1 ATTRIBUTES

[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) %]
=head2 [%- IF (c.required_in_shape(shape,param_name)) %]B<REQUIRED> [% END %][% param_name %] => [% c.perl_type_to_pod(member.perl_type) %]

[% c.doc_for_param_name_in_shape(shape, param_name) %]

[% IF member.enum %]Valid values are: [% FOR value=member.enum %]C<"[% value %]">[% IF NOT loop.last %], [% END %][% END %][% END -%]

[% END %]

=cut
#);

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% op_name %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  [%- traits = [] -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%-    IF (shape.members.$param_name.location == 'header');      traits.push('ParamInHeader') %], header_name => '[% shape.members.$param_name.locationName %]'
  [%- ELSIF (shape.members.$param_name.location == 'headers');     traits.push('ParamInHeaders') %], header_prefix => '[% shape.members.$param_name.locationName %]'
  [%- ELSIF (shape.members.$param_name.location == 'querystring'); traits.push('ParamInQuery') %], query_name => '[% shape.members.$param_name.locationName %]'
  [%- ELSIF (shape.members.$param_name.location == 'uri');         traits.push('ParamInURI') %], uri_name => '[% shape.members.$param_name.locationName %]'
  [%- ELSIF (shape.members.$param_name.streaming == 1);            traits.push('ParamInBody'); %][% stream_param = param_name -%]
  [%- ELSE %][% IF (shape.members.$param_name.locationName != '') -%]
               [%- IF (shape.members.$param_name.locationName == 'x-amz-meta-') %]
               [%- ELSIF (shape.members.$param_name.locationName != param_name); traits.push('NameInRequest'); %], request_name => '[% shape.members.$param_name.locationName -%]'
               [%- END -%]
             [%- END -%]
  [%- END -%]
  [%- IF (traits.size) %], traits => [[% FOREACH trait=traits %]'[% trait %]'[% ',' IF (NOT loop.last) %][% END %]][% END -%]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '[% operation.http.requestUri %]');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => '[% operation.http.method %]');
  class_has _returns => (isa => 'Str', is => 'ro', default => '
    [%- IF (operation.output.keys.size) -%]
      [%- c.api %]::[% c.shapename_for_operation_output(op_name) -%]
    [%- ELSE -%]Paws::API::Response[% END -%]');
  class_has _result_key => (isa => 'Str', is => 'ro');
  [% IF (stream_param) %]class_has _stream_param => (is => 'ro', default => '[% c.to_payload_shape_name(stream_param) %]');[% END %]
1;
[% c.callclass_documentation_template | eval %]
#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.result_for_operation(op_name) %]
[%- shape = c.result_for_operation(op_name) %]
[%- op_name = c.shapename_for_operation_output(op_name) %]
[%- IF (shape) %]
package [% c.api %]::[% op_name %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.$param_name.locationName) %]
    [%- IF (shape.members.$param_name.location == 'header') %], traits => ['ParamInHeader'], header_name => '[% shape.members.$param_name.locationName -%]'
    [%- ELSIF (shape.members.$param_name.location == 'headers') %], traits => ['ParamInHeaders'], header_prefix => '[% shape.members.$param_name.locationName %]'
    [%- ELSIF (shape.members.$param_name.location == 'querystring') %], traits => ['ParamInQuery'], query_name => '[% shape.members.$param_name.locationName -%]' 
    [%- ELSIF (shape.members.$param_name.location == 'uri') %], traits => ['ParamInURI'], uri_name => '[% shape.members.$param_name.locationName -%]' 
    [%- ELSE %], traits => ['NameInRequest'], request_name => '[% shape.members.$param_name.locationName %]'[%- END -%][%- END -%]
  [%- IF (shape.members.$param_name.streaming == 1) %], traits => ['ParamInBody'][% stream_param = param_name %][% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  [%- IF (stream_param) -%]
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => '[% c.to_payload_shape_name(stream_param) %]');
  [%- END %]
  has _request_id => (is => 'ro', isa => 'Str');
[%- END %]
1;
[% c.class_documentation_template | eval %]
#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
[%- IF (c.enums.size) -%]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[%- END -%]
package [% c.api %];
  warn "[% c.api %] is not stable / supported / entirely developed";
  use Moose;
  sub service { '[% c.service %]' }
  sub version { '[% c.version %]' }
  sub flattened_arrays { [% c.flattened_arrays %] }
  has max_attempts => (is => 'ro', isa => 'Int', default => [% c.service_max_attempts %]);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => '[% c.service_retry.base %]', type => '[% c.service_retry.type %]', growth_factor => [% c.service_retry.growth_factor %] }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  [%- FOREACH key IN c.retry.policies.keys.sort %]
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

  with 'Paws::API::Caller', '[% c.endpoint_role %]', '[% c.signature_role %]', '[% c.parameter_role %]';

  [%- c.service_endpoint_rules %]
  [% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = op %]
  sub [% op_name %] {
    my $self = shift;
    my $call_object = $self->new_with_coercions('[% c.api %]::[% op_name %]', @_);
    return $self->caller->do_call($self, $call_object);
  }
  [%- END %]
  [% c.paginator_template | eval %]

  sub operations { qw/[% FOR op IN c.api_struct.operations.keys.sort; op _ ' '; END %]/ }

1;
[% c.service_documentation_template | eval %]
#);

}
1;
