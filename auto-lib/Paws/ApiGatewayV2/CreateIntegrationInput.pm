package Paws::ApiGatewayV2::CreateIntegrationInput;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', request_name => 'connectionId', traits => ['NameInRequest']);
  has ConnectionType => (is => 'ro', isa => 'Str', request_name => 'connectionType', traits => ['NameInRequest']);
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', request_name => 'contentHandlingStrategy', traits => ['NameInRequest']);
  has CredentialsArn => (is => 'ro', isa => 'Str', request_name => 'credentialsArn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IntegrationMethod => (is => 'ro', isa => 'Str', request_name => 'integrationMethod', traits => ['NameInRequest']);
  has IntegrationType => (is => 'ro', isa => 'Str', request_name => 'integrationType', traits => ['NameInRequest'], required => 1);
  has IntegrationUri => (is => 'ro', isa => 'Str', request_name => 'integrationUri', traits => ['NameInRequest']);
  has PassthroughBehavior => (is => 'ro', isa => 'Str', request_name => 'passthroughBehavior', traits => ['NameInRequest']);
  has PayloadFormatVersion => (is => 'ro', isa => 'Str', request_name => 'payloadFormatVersion', traits => ['NameInRequest']);
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', request_name => 'requestParameters', traits => ['NameInRequest']);
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', request_name => 'requestTemplates', traits => ['NameInRequest']);
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'templateSelectionExpression', traits => ['NameInRequest']);
  has TimeoutInMillis => (is => 'ro', isa => 'Int', request_name => 'timeoutInMillis', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateIntegrationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateIntegrationInput object:

  $service_obj->Method(Att1 => { ConnectionId => $value, ..., TimeoutInMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateIntegrationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionId

=head1 DESCRIPTION

Represents the input parameters for a CreateIntegration request.

=head1 ATTRIBUTES


=head2 ConnectionId => Str

  The connection ID.


=head2 ConnectionType => Str

  The type of the network connection to the integration endpoint.
Currently the only valid value is INTERNET, for connections through the
public routable internet.


=head2 ContentHandlingStrategy => Str

  Supported only for WebSocket APIs. Specifies how to handle response
payload content type conversions. Supported values are
CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:

CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
Base64-encoded string.

If this property is not defined, the response payload will be passed
through from the integration response to the route response or method
response without modification.


=head2 CredentialsArn => Str

  Specifies the credentials required for the integration, if any. For AWS
integrations, three options are available. To specify an IAM Role for
API Gateway to assume, use the role's Amazon Resource Name (ARN). To
require that the caller's identity be passed through from the request,
specify the string arn:aws:iam::*:user/*. To use resource-based
permissions on supported AWS services, specify null.


=head2 Description => Str

  The description of the integration.


=head2 IntegrationMethod => Str

  Specifies the integration's HTTP method type.


=head2 B<REQUIRED> IntegrationType => Str

  The integration type of an integration. One of the following:

AWS: for integrating the route or method request with an AWS service
action, including the Lambda function-invoking action. With the Lambda
function-invoking action, this is referred to as the Lambda custom
integration. With any other AWS service action, this is known as AWS
integration. Supported only for WebSocket APIs.

AWS_PROXY: for integrating the route or method request with the Lambda
function-invoking action with the client request passed through as-is.
This integration is also referred to as Lambda proxy integration.

HTTP: for integrating the route or method request with an HTTP
endpoint. This integration is also referred to as the HTTP custom
integration. Supported only for WebSocket APIs.

HTTP_PROXY: for integrating route or method request with an HTTP
endpoint, with the client request passed through as-is. This is also
referred to as HTTP proxy integration.

MOCK: for integrating the route or method request with API Gateway as a
"loopback" endpoint without invoking any backend. Supported only for
WebSocket APIs.


=head2 IntegrationUri => Str

  For a Lambda proxy integration, this is the URI of the Lambda function.


=head2 PassthroughBehavior => Str

  Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available mapping templates
specified as the requestTemplates property on the Integration resource.
There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
NEVER. Supported only for WebSocket APIs.

WHEN_NO_MATCH passes the request body for unmapped content types
through to the integration backend without transformation.

NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
Type response.

WHEN_NO_TEMPLATES allows pass-through when the integration has no
content types mapped to templates. However, if there is at least one
content type defined, unmapped content types will be rejected with the
same HTTP 415 Unsupported Media Type response.


=head2 PayloadFormatVersion => Str

  Specifies the format of the payload sent to an integration. Required
for HTTP APIs. Currently, the only supported value is 1.0.


=head2 RequestParameters => L<Paws::ApiGatewayV2::IntegrationParameters>

  A key-value map specifying request parameters that are passed from the
method request to the backend. The key is an integration request
parameter name and the associated value is a method request parameter
value or static value that must be enclosed within single quotes and
pre-encoded as required by the backend. The method request parameter
value must match the pattern of method.request.{location}.{name} ,
where {location} is querystring, path, or header; and {name} must be a
valid and unique method request parameter name. Supported only for
WebSocket APIs.


=head2 RequestTemplates => L<Paws::ApiGatewayV2::TemplateMap>

  Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value. Supported only for WebSocket APIs.


=head2 TemplateSelectionExpression => Str

  The template selection expression for the integration.


=head2 TimeoutInMillis => Int

  Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds for WebSocket APIs. The default value
is 5,000 milliseconds, or 5 seconds for HTTP APIs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

