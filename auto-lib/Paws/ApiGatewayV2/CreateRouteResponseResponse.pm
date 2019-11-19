
package Paws::ApiGatewayV2::CreateRouteResponseResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ModelSelectionExpression => (is => 'ro', isa => Str);
  has ResponseModels => (is => 'ro', isa => ApiGatewayV2_RouteModels);
  has ResponseParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters);
  has RouteResponseId => (is => 'ro', isa => Str);
  has RouteResponseKey => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResponseParameters' => 'responseParameters',
                       'ResponseModels' => 'responseModels',
                       'RouteResponseKey' => 'routeResponseKey',
                       'RouteResponseId' => 'routeResponseId',
                       'ModelSelectionExpression' => 'modelSelectionExpression'
                     },
  'types' => {
               'ResponseModels' => {
                                     'type' => 'ApiGatewayV2_RouteModels',
                                     'class' => 'Paws::ApiGatewayV2::RouteModels'
                                   },
               'ResponseParameters' => {
                                         'type' => 'ApiGatewayV2_RouteParameters',
                                         'class' => 'Paws::ApiGatewayV2::RouteParameters'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RouteResponseId' => {
                                      'type' => 'Str'
                                    },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RouteResponseKey' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateRouteResponseResponse

=head1 ATTRIBUTES


=head2 ModelSelectionExpression => Str

Represents the model selection expression of a route response.


=head2 ResponseModels => ApiGatewayV2_RouteModels

Represents the response models of a route response.


=head2 ResponseParameters => ApiGatewayV2_RouteParameters

Represents the response parameters of a route response.


=head2 RouteResponseId => Str

Represents the identifier of a route response.


=head2 RouteResponseKey => Str

Represents the route response key of a route response.


=head2 _request_id => Str


=cut

