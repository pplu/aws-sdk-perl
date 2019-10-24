
package Paws::ApiGatewayV2::UpdateRoute;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ApiKeyRequired => (is => 'ro', isa => Bool, predicate => 1);
  has AuthorizationScopes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has AuthorizationType => (is => 'ro', isa => Str, predicate => 1);
  has AuthorizerId => (is => 'ro', isa => Str, predicate => 1);
  has ModelSelectionExpression => (is => 'ro', isa => Str, predicate => 1);
  has OperationName => (is => 'ro', isa => Str, predicate => 1);
  has RequestModels => (is => 'ro', isa => ApiGatewayV2_RouteModels, predicate => 1);
  has RequestParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters, predicate => 1);
  has RouteId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteKey => (is => 'ro', isa => Str, predicate => 1);
  has RouteResponseSelectionExpression => (is => 'ro', isa => Str, predicate => 1);
  has Target => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRoute');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayV2::UpdateRouteResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Target' => {
                             'type' => 'Str'
                           },
               'AuthorizationScopes' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'OperationName' => {
                                    'type' => 'Str'
                                  },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RouteId' => {
                              'type' => 'Str'
                            },
               'AuthorizerId' => {
                                   'type' => 'Str'
                                 },
               'RouteKey' => {
                               'type' => 'Str'
                             },
               'RouteResponseSelectionExpression' => {
                                                       'type' => 'Str'
                                                     },
               'RequestParameters' => {
                                        'class' => 'Paws::ApiGatewayV2::RouteParameters',
                                        'type' => 'ApiGatewayV2_RouteParameters'
                                      },
               'RequestModels' => {
                                    'class' => 'Paws::ApiGatewayV2::RouteModels',
                                    'type' => 'ApiGatewayV2_RouteModels'
                                  },
               'ApiKeyRequired' => {
                                     'type' => 'Bool'
                                   },
               'AuthorizationType' => {
                                        'type' => 'Str'
                                      }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId',
                    'RouteId' => 'routeId'
                  },
  'NameInRequest' => {
                       'Target' => 'target',
                       'AuthorizationScopes' => 'authorizationScopes',
                       'OperationName' => 'operationName',
                       'ModelSelectionExpression' => 'modelSelectionExpression',
                       'AuthorizerId' => 'authorizerId',
                       'RouteKey' => 'routeKey',
                       'RouteResponseSelectionExpression' => 'routeResponseSelectionExpression',
                       'RequestParameters' => 'requestParameters',
                       'RequestModels' => 'requestModels',
                       'ApiKeyRequired' => 'apiKeyRequired',
                       'AuthorizationType' => 'authorizationType'
                     },
  'IsRequired' => {
                    'ApiId' => 1,
                    'RouteId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateRoute - Arguments for method UpdateRoute on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoute on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoute.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateRouteResult = $apigateway->UpdateRoute(
      ApiId          => 'My__string',
      RouteId        => 'My__string',
      ApiKeyRequired => 1,              # OPTIONAL
      AuthorizationScopes => [ 'MyStringWithLengthBetween1And64', ... ]
      ,                                 # OPTIONAL
      AuthorizationType        => 'NONE',                             # OPTIONAL
      AuthorizerId             => 'MyId',                             # OPTIONAL
      ModelSelectionExpression => 'MySelectionExpression',            # OPTIONAL
      OperationName            => 'MyStringWithLengthBetween1And64',  # OPTIONAL
      RequestModels => { 'My__string' => 'MyStringWithLengthBetween1And128', }
      ,                                                               # OPTIONAL
      RequestParameters => { 'My__string' => { Required => 1, }, },   # OPTIONAL
      RouteKey => 'MySelectionKey',                                   # OPTIONAL
      RouteResponseSelectionExpression => 'MySelectionExpression',    # OPTIONAL
      Target => 'MyStringWithLengthBetween1And128',                   # OPTIONAL
    );

    # Results:
    my $ApiKeyRequired           = $UpdateRouteResult->ApiKeyRequired;
    my $AuthorizationScopes      = $UpdateRouteResult->AuthorizationScopes;
    my $AuthorizationType        = $UpdateRouteResult->AuthorizationType;
    my $AuthorizerId             = $UpdateRouteResult->AuthorizerId;
    my $ModelSelectionExpression = $UpdateRouteResult->ModelSelectionExpression;
    my $OperationName            = $UpdateRouteResult->OperationName;
    my $RequestModels            = $UpdateRouteResult->RequestModels;
    my $RequestParameters        = $UpdateRouteResult->RequestParameters;
    my $RouteId                  = $UpdateRouteResult->RouteId;
    my $RouteKey                 = $UpdateRouteResult->RouteKey;
    my $RouteResponseSelectionExpression =
      $UpdateRouteResult->RouteResponseSelectionExpression;
    my $Target = $UpdateRouteResult->Target;

    # Returns a L<Paws::ApiGatewayV2::UpdateRouteResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ApiKeyRequired => Bool

Specifies whether an API key is required for the route.



=head2 AuthorizationScopes => ArrayRef[Str|Undef]

The authorization scopes supported by this route.



=head2 AuthorizationType => Str

The authorization type for the route. Valid values are NONE for open
access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a
Lambda authorizer.

Valid values are: C<"NONE">, C<"AWS_IAM">, C<"CUSTOM">

=head2 AuthorizerId => Str

The identifier of the Authorizer resource to be associated with this
route, if the authorizationType is CUSTOM . The authorizer identifier
is generated by API Gateway when you created the authorizer.



=head2 ModelSelectionExpression => Str

The model selection expression for the route.



=head2 OperationName => Str

The operation name for the route.



=head2 RequestModels => ApiGatewayV2_RouteModels

The request models for the route.



=head2 RequestParameters => ApiGatewayV2_RouteParameters

The request parameters for the route.



=head2 B<REQUIRED> RouteId => Str

The route ID.



=head2 RouteKey => Str

The route key for the route.



=head2 RouteResponseSelectionExpression => Str

The route response selection expression for the route.



=head2 Target => Str

The target for the route.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoute in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

