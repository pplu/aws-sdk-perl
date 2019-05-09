
package Paws::ApiGatewayV2::GetRoute;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has RouteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetRouteResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetRoute - Arguments for method GetRoute on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoute on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoute.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetRouteResult = $apigateway->GetRoute(
      ApiId   => 'My__string',
      RouteId => 'My__string',

    );

    # Results:
    my $ApiKeyRequired           = $GetRouteResult->ApiKeyRequired;
    my $AuthorizationScopes      = $GetRouteResult->AuthorizationScopes;
    my $AuthorizationType        = $GetRouteResult->AuthorizationType;
    my $AuthorizerId             = $GetRouteResult->AuthorizerId;
    my $ModelSelectionExpression = $GetRouteResult->ModelSelectionExpression;
    my $OperationName            = $GetRouteResult->OperationName;
    my $RequestModels            = $GetRouteResult->RequestModels;
    my $RequestParameters        = $GetRouteResult->RequestParameters;
    my $RouteId                  = $GetRouteResult->RouteId;
    my $RouteKey                 = $GetRouteResult->RouteKey;
    my $RouteResponseSelectionExpression =
      $GetRouteResult->RouteResponseSelectionExpression;
    my $Target = $GetRouteResult->Target;

    # Returns a L<Paws::ApiGatewayV2::GetRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> RouteId => Str

The route ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoute in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

