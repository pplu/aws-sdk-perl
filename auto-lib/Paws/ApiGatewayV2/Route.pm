# Generated from default/object.tt
package Paws::ApiGatewayV2::Route;
  use Moo;
  use Types::Standard qw/Bool Str Undef ArrayRef/;
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
  has RouteKey => (is => 'ro', isa => Str, required => 1);
  has RouteResponseSelectionExpression => (is => 'ro', isa => Str);
  has Target => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizationScopes' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'AuthorizerId' => {
                                   'type' => 'Str'
                                 },
               'RequestModels' => {
                                    'class' => 'Paws::ApiGatewayV2::RouteModels',
                                    'type' => 'ApiGatewayV2_RouteModels'
                                  },
               'AuthorizationType' => {
                                        'type' => 'Str'
                                      },
               'RouteResponseSelectionExpression' => {
                                                       'type' => 'Str'
                                                     },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RequestParameters' => {
                                        'type' => 'ApiGatewayV2_RouteParameters',
                                        'class' => 'Paws::ApiGatewayV2::RouteParameters'
                                      },
               'ApiKeyRequired' => {
                                     'type' => 'Bool'
                                   },
               'Target' => {
                             'type' => 'Str'
                           },
               'RouteKey' => {
                               'type' => 'Str'
                             },
               'RouteId' => {
                              'type' => 'Str'
                            },
               'OperationName' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'RouteKey' => 1
                  },
  'NameInRequest' => {
                       'AuthorizationType' => 'authorizationType',
                       'RequestModels' => 'requestModels',
                       'RouteResponseSelectionExpression' => 'routeResponseSelectionExpression',
                       'AuthorizationScopes' => 'authorizationScopes',
                       'AuthorizerId' => 'authorizerId',
                       'Target' => 'target',
                       'ApiKeyRequired' => 'apiKeyRequired',
                       'RouteId' => 'routeId',
                       'OperationName' => 'operationName',
                       'RouteKey' => 'routeKey',
                       'RequestParameters' => 'requestParameters',
                       'ModelSelectionExpression' => 'modelSelectionExpression'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Route

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Route object:

  $service_obj->Method(Att1 => { ApiKeyRequired => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Route object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeyRequired

=head1 DESCRIPTION

Represents a route.

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


=head2 B<REQUIRED> RouteKey => Str

  The route key for the route.


=head2 RouteResponseSelectionExpression => Str

  The route response selection expression for the route.


=head2 Target => Str

  The target for the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

