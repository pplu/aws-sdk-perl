
package Paws::ApiGatewayV2::GetRouteResponseResponse;
  use Moose;
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'responseModels');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'responseParameters');
  has RouteResponseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseId');
  has RouteResponseKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetRouteResponseResponse

=head1 ATTRIBUTES


=head2 ModelSelectionExpression => Str

Represents the model selection expression of a route response.


=head2 ResponseModels => L<Paws::ApiGatewayV2::RouteModels>

Represents the response models of a route response.


=head2 ResponseParameters => L<Paws::ApiGatewayV2::RouteParameters>

Represents the response parameters of a route response.


=head2 RouteResponseId => Str

Represents the identifier of a route response.


=head2 RouteResponseKey => Str

Represents the route response key of a route response.


=head2 _request_id => Str


=cut

