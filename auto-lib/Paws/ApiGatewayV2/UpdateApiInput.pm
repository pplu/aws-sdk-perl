package Paws::ApiGatewayV2::UpdateApiInput;
  use Moose;
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', request_name => 'apiKeySelectionExpression', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', request_name => 'disableSchemaValidation', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'routeSelectionExpression', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateApiInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateApiInput object:

  $service_obj->Method(Att1 => { ApiKeySelectionExpression => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateApiInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeySelectionExpression

=head1 DESCRIPTION

Represents the input parameters for an UpdateApi request.

=head1 ATTRIBUTES


=head2 ApiKeySelectionExpression => Str

  An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 Description => Str

  The description of the API.


=head2 DisableSchemaValidation => Bool

  Avoid validating models when creating a deployment.


=head2 Name => Str

  The name of the API.


=head2 RouteSelectionExpression => Str

  The route selection expression for the API.


=head2 Version => Str

  A version identifier for the API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

