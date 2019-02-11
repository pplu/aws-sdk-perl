
package Paws::ApiGatewayV2::CreateApiResponse;
  use Moose;
  has ApiEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiEndpoint');
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId');
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySelectionExpression');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableSchemaValidation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProtocolType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocolType');
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeSelectionExpression');
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


=head2 ApiId => Str

The API ID.


=head2 ApiKeySelectionExpression => Str

An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CreatedDate => Str

The timestamp when the API was created.


=head2 Description => Str

The description of the API.


=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment.


=head2 Name => Str

The name of the API.


=head2 ProtocolType => Str

The API protocol: HTTP or WEBSOCKET.

Valid values are: C<"WEBSOCKET">
=head2 RouteSelectionExpression => Str

The route selection expression for the API.


=head2 Version => Str

A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

The warning messages reported when failonwarnings is turned on during
API import.


=head2 _request_id => Str


=cut

