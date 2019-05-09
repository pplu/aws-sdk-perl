
package Paws::ApiGatewayV2::CreateRouteResponse;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'responseModels');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'responseParameters');
  has RouteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeId', required => 1);
  has RouteResponseKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseKey', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}/routeresponses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateRouteResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateRouteResponse - Arguments for method CreateRouteResponse on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRouteResponse on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateRouteResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRouteResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateRouteResponseResponse = $apigateway->CreateRouteResponse(
      ApiId                    => 'My__string',
      RouteId                  => 'My__string',
      RouteResponseKey         => 'MySelectionKey',
      ModelSelectionExpression => 'MySelectionExpression',    # OPTIONAL
      ResponseModels => { 'My__string' => 'MyStringWithLengthBetween1And128', }
      ,                                                       # OPTIONAL
      ResponseParameters => {
        'My__string' => {
          Required => 1,                                      # OPTIONAL
        },
      },    # OPTIONAL
    );

    # Results:
    my $ModelSelectionExpression =
      $CreateRouteResponseResponse->ModelSelectionExpression;
    my $ResponseModels     = $CreateRouteResponseResponse->ResponseModels;
    my $ResponseParameters = $CreateRouteResponseResponse->ResponseParameters;
    my $RouteResponseId    = $CreateRouteResponseResponse->RouteResponseId;
    my $RouteResponseKey   = $CreateRouteResponseResponse->RouteResponseKey;

    # Returns a L<Paws::ApiGatewayV2::CreateRouteResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateRouteResponse>

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



=head2 B<REQUIRED> RouteResponseKey => Str

The route response key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRouteResponse in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

