
package Paws::ApiGatewayV2::CreateRouteResult;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiKeyRequired');
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizationScopes');
  has AuthorizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationType');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerId');
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has OperationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationName');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'requestModels');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RouteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeId');
  has RouteKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeKey');
  has RouteResponseSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseSelectionExpression');
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateRouteResult

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether an API key is required for this route.


=head2 AuthorizationScopes => ArrayRef[Str|Undef]

The authorization scopes supported by this route.


=head2 AuthorizationType => Str

The authorization type for the route. Valid values are NONE for open
access, AWS_IAM for using AWS IAM permissions.

Valid values are: C<"NONE">, C<"AWS_IAM">, C<"CUSTOM">
=head2 AuthorizerId => Str

The identifier of the Authorizer resource to be associated with this
route.


=head2 ModelSelectionExpression => Str

The model selection expression for the route.


=head2 OperationName => Str

The operation name for the route.


=head2 RequestModels => L<Paws::ApiGatewayV2::RouteModels>

The request models for the route.


=head2 RequestParameters => L<Paws::ApiGatewayV2::RouteParameters>

The request parameters for the route.


=head2 RouteId => Str

The route ID.


=head2 RouteKey => Str

The route key for the route.


=head2 RouteResponseSelectionExpression => Str

The route response selection expression for the route.


=head2 Target => Str

The target for the route.


=head2 _request_id => Str


=cut

