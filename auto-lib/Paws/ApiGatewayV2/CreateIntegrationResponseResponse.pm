
package Paws::ApiGatewayV2::CreateIntegrationResponseResponse;
  use Moose;
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandlingStrategy');
  has IntegrationResponseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationResponseId');
  has IntegrationResponseKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationResponseKey');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', traits => ['NameInRequest'], request_name => 'responseParameters');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', traits => ['NameInRequest'], request_name => 'responseTemplates');
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateSelectionExpression');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateIntegrationResponseResponse

=head1 ATTRIBUTES


=head2 ContentHandlingStrategy => Str

Specifies how to handle response payload content type conversions.
Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the
following behaviors:

CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
Base64-encoded string.

If this property is not defined, the response payload will be passed
through from the integration response to the route response or method
response without modification.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">
=head2 IntegrationResponseId => Str

The integration response ID.


=head2 IntegrationResponseKey => Str

The integration response key.


=head2 ResponseParameters => L<Paws::ApiGatewayV2::IntegrationParameters>

A key-value map specifying response parameters that are passed to the
method response from the backend. The key is a method response header
parameter name and the mapped value is an integration response header
value, a static value enclosed within a pair of single quotes, or a
JSON expression from the integration response body. The mapping key
must match the pattern of method.response.header.{name}, where name is
a valid and unique header name. The mapped non-static value must match
the pattern of integration.response.header.{name} or
integration.response.body.{JSON-expression}, where name is a valid and
unique response header name and JSON-expression is a valid JSON
expression without the $ prefix.


=head2 ResponseTemplates => L<Paws::ApiGatewayV2::TemplateMap>

The collection of response templates for the integration response as a
string-to-string map of key-value pairs. Response templates are
represented as a key/value map, with a content-type as the key and a
template as the value.


=head2 TemplateSelectionExpression => Str

The template selection expressions for the integration response.


=head2 _request_id => Str


=cut

