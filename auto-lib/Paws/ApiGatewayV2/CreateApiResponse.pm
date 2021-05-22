
package Paws::ApiGatewayV2::CreateApiResponse;
  use Moose;
  has ApiEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiEndpoint');
  has ApiGatewayManaged => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiGatewayManaged');
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId');
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySelectionExpression');
  has CorsConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::Cors', traits => ['NameInRequest'], request_name => 'corsConfiguration');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableExecuteApiEndpoint => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableExecuteApiEndpoint');
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableSchemaValidation');
  has ImportInfo => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'importInfo');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProtocolType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocolType');
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeSelectionExpression');
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateApiResponse

=head1 ATTRIBUTES


=head2 ApiEndpoint => Str

The URI of the API, of the form
{api-id}.execute-api.{region}.amazonaws.com. The stage name is
typically appended to this URI to form a complete path to a deployed
API stage.


=head2 ApiGatewayManaged => Bool

Specifies whether an API is managed by API Gateway. You can't update or
delete a managed API by using API Gateway. A managed API can be deleted
only through the tooling or service that created it.


=head2 ApiId => Str

The API ID.


=head2 ApiKeySelectionExpression => Str

An API key selection expression. Supported only for WebSocket APIs. See
API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CorsConfiguration => L<Paws::ApiGatewayV2::Cors>

A CORS configuration. Supported only for HTTP APIs.


=head2 CreatedDate => Str

The timestamp when the API was created.


=head2 Description => Str

The description of the API.


=head2 DisableExecuteApiEndpoint => Bool

Specifies whether clients can invoke your API by using the default
execute-api endpoint. By default, clients can invoke your API with the
default https://{api_id}.execute-api.{region}.amazonaws.com endpoint.
To require that clients use a custom domain name to invoke your API,
disable the default endpoint.


=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment. Supported only for
WebSocket APIs.


=head2 ImportInfo => ArrayRef[Str|Undef]

The validation information during API import. This may include
particular properties of your OpenAPI definition which are ignored
during import. Supported only for HTTP APIs.


=head2 Name => Str

The name of the API.


=head2 ProtocolType => Str

The API protocol.

Valid values are: C<"WEBSOCKET">, C<"HTTP">
=head2 RouteSelectionExpression => Str

The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

A collection of tags associated with the API.


=head2 Version => Str

A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

The warning messages reported when failonwarnings is turned on during
API import.


=head2 _request_id => Str


=cut

