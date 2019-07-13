package Paws::ApiGatewayV2::RouteResponse;
  use Moose;
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'modelSelectionExpression', traits => ['NameInRequest']);
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', request_name => 'responseModels', traits => ['NameInRequest']);
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', request_name => 'responseParameters', traits => ['NameInRequest']);
  has RouteResponseId => (is => 'ro', isa => 'Str', request_name => 'routeResponseId', traits => ['NameInRequest']);
  has RouteResponseKey => (is => 'ro', isa => 'Str', request_name => 'routeResponseKey', traits => ['NameInRequest'], required => 1);
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


=head2 ResponseModels => L<Paws::ApiGatewayV2::RouteModels>

  Represents the response models of a route response.


=head2 ResponseParameters => L<Paws::ApiGatewayV2::RouteParameters>

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

