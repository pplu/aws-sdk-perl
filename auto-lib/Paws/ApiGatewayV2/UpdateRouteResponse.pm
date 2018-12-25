
package Paws::ApiGatewayV2::UpdateRouteResponse;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'responseModels');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'responseParameters');
  has RouteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeId', required => 1);
  has RouteResponseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeResponseId', required => 1);
  has RouteResponseKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRouteResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateRouteResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateRouteResponse - Arguments for method UpdateRouteResponse on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRouteResponse on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateRouteResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRouteResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateRouteResponseResponse = $apigateway->UpdateRouteResponse(
      ApiId                    => 'My__string',
      RouteId                  => 'My__string',
      RouteResponseId          => 'My__string',
      ModelSelectionExpression => 'MySelectionExpression',    # OPTIONAL
      ResponseModels => { 'My__string' => 'MyStringWithLengthBetween1And128', }
      ,                                                       # OPTIONAL
      ResponseParameters => {
        'My__string' => {
          Required => 1,                                      # OPTIONAL
        },
      },    # OPTIONAL
      RouteResponseKey => 'MySelectionKey',    # OPTIONAL
    );

    # Results:
    my $ModelSelectionExpression =
      $UpdateRouteResponseResponse->ModelSelectionExpression;
    my $ResponseModels     = $UpdateRouteResponseResponse->ResponseModels;
    my $ResponseParameters = $UpdateRouteResponseResponse->ResponseParameters;
    my $RouteResponseId    = $UpdateRouteResponseResponse->RouteResponseId;
    my $RouteResponseKey   = $UpdateRouteResponseResponse->RouteResponseKey;

    # Returns a L<Paws::ApiGatewayV2::UpdateRouteResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateRouteResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ModelSelectionExpression => Str

The model selection expression for the route response.



=head2 ResponseModels => L<Paws::ApiGatewayV2::RouteModels>

The response models for the route response.



=head2 ResponseParameters => L<Paws::ApiGatewayV2::RouteParameters>

The route response parameters.



=head2 B<REQUIRED> RouteId => Str

The route ID.



=head2 B<REQUIRED> RouteResponseId => Str

The route response ID.



=head2 RouteResponseKey => Str

The route response key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRouteResponse in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

