package Paws::ApiGatewayV2::CreateRouteInput;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', request_name => 'apiKeyRequired', traits => ['NameInRequest']);
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'authorizationScopes', traits => ['NameInRequest']);
  has AuthorizationType => (is => 'ro', isa => 'Str', request_name => 'authorizationType', traits => ['NameInRequest']);
  has AuthorizerId => (is => 'ro', isa => 'Str', request_name => 'authorizerId', traits => ['NameInRequest']);
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'modelSelectionExpression', traits => ['NameInRequest']);
  has OperationName => (is => 'ro', isa => 'Str', request_name => 'operationName', traits => ['NameInRequest']);
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', request_name => 'requestModels', traits => ['NameInRequest']);
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', request_name => 'requestParameters', traits => ['NameInRequest']);
  has RouteKey => (is => 'ro', isa => 'Str', request_name => 'routeKey', traits => ['NameInRequest'], required => 1);
  has RouteResponseSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'routeResponseSelectionExpression', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateRouteInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateRouteInput object:

  $service_obj->Method(Att1 => { ApiKeyRequired => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateRouteInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeyRequired

=head1 DESCRIPTION

Represents the input parameters for a CreateRoute request.

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

  Specifies whether an API key is required for the route.


=head2 AuthorizationScopes => ArrayRef[Str|Undef]

  The authorization scopes supported by this route.


=head2 AuthorizationType => Str

  The authorization type for the route. Valid values are NONE for open
access, AWS_IAM for using AWS IAM permissions.


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

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

