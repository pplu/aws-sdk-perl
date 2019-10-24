
package Paws::ApiGatewayV2::GetRouteResult;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ApiKeyRequired => (is => 'ro', isa => Bool);
  has AuthorizationScopes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AuthorizationType => (is => 'ro', isa => Str);
  has AuthorizerId => (is => 'ro', isa => Str);
  has ModelSelectionExpression => (is => 'ro', isa => Str);
  has OperationName => (is => 'ro', isa => Str);
  has RequestModels => (is => 'ro', isa => ApiGatewayV2_RouteModels);
  has RequestParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters);
  has RouteId => (is => 'ro', isa => Str);
  has RouteKey => (is => 'ro', isa => Str);
  has RouteResponseSelectionExpression => (is => 'ro', isa => Str);
  has Target => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
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
               '_request_id' => {
                                  'type' => 'Str'
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
  'NameInRequest' => {
                       'Target' => 'target',
                       'AuthorizationScopes' => 'authorizationScopes',
                       'OperationName' => 'operationName',
                       'ModelSelectionExpression' => 'modelSelectionExpression',
                       'RouteId' => 'routeId',
                       'AuthorizerId' => 'authorizerId',
                       'RouteKey' => 'routeKey',
                       'RouteResponseSelectionExpression' => 'routeResponseSelectionExpression',
                       'RequestParameters' => 'requestParameters',
                       'RequestModels' => 'requestModels',
                       'ApiKeyRequired' => 'apiKeyRequired',
                       'AuthorizationType' => 'authorizationType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetRouteResult

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether an API key is required for this route.


=head2 AuthorizationScopes => ArrayRef[Str|Undef]

A list of authorization scopes configured on a route. The scopes are
used with a COGNITO_USER_POOLS authorizer to authorize the method
invocation. The authorization works by matching the route scopes
against the scopes parsed from the access token in the incoming
request. The method invocation is authorized if any route scope matches
a claimed scope in the access token. Otherwise, the invocation is not
authorized. When the route scope is configured, the client must provide
an access token instead of an identity token for authorization
purposes.


=head2 AuthorizationType => Str

The authorization type for the route. Valid values are NONE for open
access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a
Lambda authorizer

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

