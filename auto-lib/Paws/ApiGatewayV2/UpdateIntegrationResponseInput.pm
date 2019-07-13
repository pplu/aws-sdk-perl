package Paws::ApiGatewayV2::UpdateIntegrationResponseInput;
  use Moose;
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', request_name => 'contentHandlingStrategy', traits => ['NameInRequest']);
  has IntegrationResponseKey => (is => 'ro', isa => 'Str', request_name => 'integrationResponseKey', traits => ['NameInRequest']);
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', request_name => 'responseParameters', traits => ['NameInRequest']);
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', request_name => 'responseTemplates', traits => ['NameInRequest']);
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'templateSelectionExpression', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateIntegrationResponseInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateIntegrationResponseInput object:

  $service_obj->Method(Att1 => { ContentHandlingStrategy => $value, ..., TemplateSelectionExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateIntegrationResponseInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentHandlingStrategy

=head1 DESCRIPTION

Represents the input parameters for an UpdateIntegrationResponse
request.

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


=head2 IntegrationResponseKey => Str

  The integration response key.


=head2 ResponseParameters => L<Paws::ApiGatewayV2::IntegrationParameters>

  A key-value map specifying response parameters that are passed to the
method response from the backend. The key is a method response header
parameter name and the mapped value is an integration response header
value, a static value enclosed within a pair of single quotes, or a
JSON expression from the integration response body. The mapping key
must match the pattern of method.response.header.{name} , where name is
a valid and unique header name. The mapped non-static value must match
the pattern of integration.response.header.{name} or
integration.response.body.{JSON-expression} , where {name} is a valid
and unique response header name and {JSON-expression} is a valid JSON
expression without the $ prefix.


=head2 ResponseTemplates => L<Paws::ApiGatewayV2::TemplateMap>

  The collection of response templates for the integration response as a
string-to-string map of key-value pairs. Response templates are
represented as a key/value map, with a content-type as the key and a
template as the value.


=head2 TemplateSelectionExpression => Str

  The template selection expression for the integration response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

