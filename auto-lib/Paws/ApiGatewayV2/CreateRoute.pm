
package Paws::ApiGatewayV2::CreateRoute;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiKeyRequired');
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizationScopes');
  has AuthorizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationType');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerId');
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has OperationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationName');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'requestModels');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RouteKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeKey', required => 1);
  has RouteResponseSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseSelectionExpression');
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/routes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateRouteResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateRoute - Arguments for method CreateRoute on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoute on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoute.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateRouteResult = $apigateway->CreateRoute(
      ApiId          => 'My__string',
      RouteKey       => 'MySelectionKey',
      ApiKeyRequired => 1,                  # OPTIONAL
      AuthorizationScopes => [ 'MyStringWithLengthBetween1And64', ... ]
      ,                                     # OPTIONAL
      AuthorizationType        => 'NONE',                             # OPTIONAL
      AuthorizerId             => 'MyId',                             # OPTIONAL
      ModelSelectionExpression => 'MySelectionExpression',            # OPTIONAL
      OperationName            => 'MyStringWithLengthBetween1And64',  # OPTIONAL
      RequestModels => { 'My__string' => 'MyStringWithLengthBetween1And128', }
      ,                                                               # OPTIONAL
      RequestParameters => { 'My__string' => { Required => 1, }, },   # OPTIONAL
      RouteResponseSelectionExpression => 'MySelectionExpression',    # OPTIONAL
      Target => 'MyStringWithLengthBetween1And128',                   # OPTIONAL
    );

    # Results:
    my $ApiKeyRequired           = $CreateRouteResult->ApiKeyRequired;
    my $AuthorizationScopes      = $CreateRouteResult->AuthorizationScopes;
    my $AuthorizationType        = $CreateRouteResult->AuthorizationType;
    my $AuthorizerId             = $CreateRouteResult->AuthorizerId;
    my $ModelSelectionExpression = $CreateRouteResult->ModelSelectionExpression;
    my $OperationName            = $CreateRouteResult->OperationName;
    my $RequestModels            = $CreateRouteResult->RequestModels;
    my $RequestParameters        = $CreateRouteResult->RequestParameters;
    my $RouteId                  = $CreateRouteResult->RouteId;
    my $RouteKey                 = $CreateRouteResult->RouteKey;
    my $RouteResponseSelectionExpression =
      $CreateRouteResult->RouteResponseSelectionExpression;
    my $Target = $CreateRouteResult->Target;

    # Returns a L<Paws::ApiGatewayV2::CreateRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ApiKeyRequired => Bool

Specifies whether an API key is required for the route.



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



=head2 B<REQUIRED> RouteKey => Str

The route key for the route.



=head2 RouteResponseSelectionExpression => Str

The route response selection expression for the route.



=head2 Target => Str

The target for the route.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoute in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

