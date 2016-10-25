
package Paws::ApiGateway::CreateAuthorizer;
  use Moose;
  has AuthorizerCredentials => (is => 'ro', isa => 'Str');
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int');
  has AuthorizerUri => (is => 'ro', isa => 'Str');
  has AuthType => (is => 'ro', isa => 'Str');
  has IdentitySource => (is => 'ro', isa => 'Str', required => 1);
  has IdentityValidationExpression => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Authorizer');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateAuthorizer - Arguments for method CreateAuthorizer on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAuthorizer on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAuthorizer.

As an example:

  $service_obj->CreateAuthorizer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthorizerCredentials => Str

Specifies the credentials required for the authorizer, if any.



=head2 AuthorizerResultTtlInSeconds => Int

The TTL of cached authorizer results.



=head2 AuthorizerUri => Str

[Required] Specifies the authorizer's Uniform Resource Identifier
(URI).



=head2 AuthType => Str

Optional customer-defined field, used in Swagger imports/exports. Has
no functional impact.



=head2 B<REQUIRED> IdentitySource => Str

[Required] The source of the identity in an incoming request.



=head2 IdentityValidationExpression => Str

A validation expression for the incoming identity.



=head2 B<REQUIRED> Name => Str

[Required] The name of the authorizer.



=head2 ProviderARNs => ArrayRef[Str|Undef]

A list of the Cognito Your User Pool authorizer's provider ARNs.



=head2 B<REQUIRED> RestApiId => Str

The RestApi identifier under which the Authorizer will be created.



=head2 B<REQUIRED> Type => Str

[Required] The type of the authorizer.

Valid values are: C<"TOKEN">, C<"COGNITO_USER_POOLS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAuthorizer in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

