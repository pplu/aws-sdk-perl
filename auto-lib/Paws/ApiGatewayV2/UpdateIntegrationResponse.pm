
package Paws::ApiGatewayV2::UpdateIntegrationResponse;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandlingStrategy');
  has IntegrationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'integrationId', required => 1);
  has IntegrationResponseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'integrationResponseId', required => 1);
  has IntegrationResponseKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationResponseKey');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', traits => ['NameInRequest'], request_name => 'responseParameters');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', traits => ['NameInRequest'], request_name => 'responseTemplates');
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateSelectionExpression');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntegrationResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateIntegrationResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateIntegrationResponse - Arguments for method UpdateIntegrationResponse on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegrationResponse on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegrationResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateIntegrationResponseResponse =
      $apigateway->UpdateIntegrationResponse(
      ApiId                   => 'My__string',
      IntegrationId           => 'My__string',
      IntegrationResponseId   => 'My__string',
      ContentHandlingStrategy => 'CONVERT_TO_BINARY',    # OPTIONAL
      IntegrationResponseKey  => 'MySelectionKey',       # OPTIONAL
      ResponseParameters =>
        { 'My__string' => 'MyStringWithLengthBetween1And512', },    # OPTIONAL
      ResponseTemplates =>
        { 'My__string' => 'MyStringWithLengthBetween0And32K', },    # OPTIONAL
      TemplateSelectionExpression => 'MySelectionExpression',       # OPTIONAL
      );

    # Results:
    my $ContentHandlingStrategy =
      $UpdateIntegrationResponseResponse->ContentHandlingStrategy;
    my $IntegrationResponseId =
      $UpdateIntegrationResponseResponse->IntegrationResponseId;
    my $IntegrationResponseKey =
      $UpdateIntegrationResponseResponse->IntegrationResponseKey;
    my $ResponseParameters =
      $UpdateIntegrationResponseResponse->ResponseParameters;
    my $ResponseTemplates =
      $UpdateIntegrationResponseResponse->ResponseTemplates;
    my $TemplateSelectionExpression =
      $UpdateIntegrationResponseResponse->TemplateSelectionExpression;

    # Returns a L<Paws::ApiGatewayV2::UpdateIntegrationResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateIntegrationResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



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

=head2 B<REQUIRED> IntegrationId => Str

The integration ID.



=head2 B<REQUIRED> IntegrationResponseId => Str

The integration response ID.



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

This class forms part of L<Paws>, documenting arguments for method UpdateIntegrationResponse in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

