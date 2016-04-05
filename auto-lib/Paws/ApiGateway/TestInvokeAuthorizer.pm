
package Paws::ApiGateway::TestInvokeAuthorizer;
  use Moose;
  has AdditionalContext => (is => 'ro', isa => 'HashRef[Str]');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerId' , required => 1);
  has Body => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'HashRef[Str]');
  has PathWithQueryString => (is => 'ro', isa => 'Str');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has StageVariables => (is => 'ro', isa => 'HashRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestInvokeAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers/{authorizer_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::TestInvokeAuthorizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeAuthorizer - Arguments for method TestInvokeAuthorizer on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestInvokeAuthorizer on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method TestInvokeAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestInvokeAuthorizer.

As an example:

  $service_obj->TestInvokeAuthorizer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AdditionalContext => HashRef[Str]





=head2 B<REQUIRED> AuthorizerId => Str





=head2 Body => Str





=head2 Headers => HashRef[Str]





=head2 PathWithQueryString => Str





=head2 B<REQUIRED> RestApiId => Str





=head2 StageVariables => HashRef[Str]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestInvokeAuthorizer in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

