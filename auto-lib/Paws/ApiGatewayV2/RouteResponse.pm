# Generated from default/object.tt
package Paws::ApiGatewayV2::RouteResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ModelSelectionExpression => (is => 'ro', isa => Str);
  has ResponseModels => (is => 'ro', isa => ApiGatewayV2_RouteModels);
  has ResponseParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters);
  has RouteResponseId => (is => 'ro', isa => Str);
  has RouteResponseKey => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResponseModels' => {
                                     'class' => 'Paws::ApiGatewayV2::RouteModels',
                                     'type' => 'ApiGatewayV2_RouteModels'
                                   },
               'RouteResponseId' => {
                                      'type' => 'Str'
                                    },
               'ResponseParameters' => {
                                         'class' => 'Paws::ApiGatewayV2::RouteParameters',
                                         'type' => 'ApiGatewayV2_RouteParameters'
                                       },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RouteResponseKey' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'ResponseModels' => 'responseModels',
                       'RouteResponseId' => 'routeResponseId',
                       'ResponseParameters' => 'responseParameters',
                       'ModelSelectionExpression' => 'modelSelectionExpression',
                       'RouteResponseKey' => 'routeResponseKey'
                     },
  'IsRequired' => {
                    'RouteResponseKey' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::RouteResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::RouteResponse object:

  $service_obj->Method(Att1 => { ModelSelectionExpression => $value, ..., RouteResponseKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::RouteResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ModelSelectionExpression

=head1 DESCRIPTION

Represents a route response.

=head1 ATTRIBUTES


=head2 ModelSelectionExpression => Str

  Represents the model selection expression of a route response.


=head2 ResponseModels => ApiGatewayV2_RouteModels

  Represents the response models of a route response.


=head2 ResponseParameters => ApiGatewayV2_RouteParameters

  Represents the response parameters of a route response.


=head2 RouteResponseId => Str

  Represents the identifier of a route response.


=head2 B<REQUIRED> RouteResponseKey => Str

  Represents the route response key of a route response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

