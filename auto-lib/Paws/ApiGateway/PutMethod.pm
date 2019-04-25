
package Paws::ApiGateway::PutMethod;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiKeyRequired');
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizationScopes');
  has AuthorizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationType', required => 1);
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerId');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has OperationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationName');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestModels');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestValidatorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestValidatorId');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Method');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutMethod - Arguments for method PutMethod on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMethod on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMethod.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Method = $apigateway->PutMethod(
      AuthorizationType   => 'MyString',
      HttpMethod          => 'MyString',
      ResourceId          => 'MyString',
      RestApiId           => 'MyString',
      ApiKeyRequired      => 1,                                # OPTIONAL
      AuthorizationScopes => [ 'MyString', ... ],              # OPTIONAL
      AuthorizerId        => 'MyString',                       # OPTIONAL
      OperationName       => 'MyString',                       # OPTIONAL
      RequestModels       => { 'MyString' => 'MyString', },    # OPTIONAL
      RequestParameters   => { 'MyString' => 1, },             # OPTIONAL
      RequestValidatorId  => 'MyString',                       # OPTIONAL
    );

    # Results:
    my $ApiKeyRequired      = $Method->ApiKeyRequired;
    my $AuthorizationScopes = $Method->AuthorizationScopes;
    my $AuthorizationType   = $Method->AuthorizationType;
    my $AuthorizerId        = $Method->AuthorizerId;
    my $HttpMethod          = $Method->HttpMethod;
    my $MethodIntegration   = $Method->MethodIntegration;
    my $MethodResponses     = $Method->MethodResponses;
    my $OperationName       = $Method->OperationName;
    my $RequestModels       = $Method->RequestModels;
    my $RequestParameters   = $Method->RequestParameters;
    my $RequestValidatorId  = $Method->RequestValidatorId;

    # Returns a L<Paws::ApiGateway::Method> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutMethod>

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether the method required a valid ApiKey.



=head2 AuthorizationScopes => ArrayRef[Str|Undef]

A list of authorization scopes configured on the method. The scopes are
used with a C<COGNITO_USER_POOLS> authorizer to authorize the method
invocation. The authorization works by matching the method scopes
against the scopes parsed from the access token in the incoming
request. The method invocation is authorized if any method scopes
matches a claimed scope in the access token. Otherwise, the invocation
is not authorized. When the method scope is configured, the client must
provide an access token instead of an identity token for authorization
purposes.



=head2 B<REQUIRED> AuthorizationType => Str

[Required] The method's authorization type. Valid values are C<NONE>
for open access, C<AWS_IAM> for using AWS IAM permissions, C<CUSTOM>
for using a custom authorizer, or C<COGNITO_USER_POOLS> for using a
Cognito user pool.



=head2 AuthorizerId => Str

Specifies the identifier of an Authorizer to use on this Method, if the
type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is
generated by API Gateway when you created the authorizer.



=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies the method request's HTTP method type.



=head2 OperationName => Str

A human-friendly operation identifier for the method. For example, you
can assign the C<operationName> of C<ListPets> for the C<GET /pets>
method in PetStore
(https://petstore-demo-endpoint.execute-api.com/petstore/pets) example.



=head2 RequestModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the request's content type.
Request models are represented as a key/value map, with a content type
as the key and a Model name as the value.



=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map defining required or optional method request parameters
that can be accepted by API Gateway. A key defines a method request
parameter name matching the pattern of
C<method.request.{location}.{name}>, where C<location> is
C<querystring>, C<path>, or C<header> and C<name> is a valid and unique
parameter name. The value associated with the key is a Boolean flag
indicating whether the parameter is required (C<true>) or optional
(C<false>). The method request parameter names defined here are
available in Integration to be mapped to integration request parameters
or body-mapping templates.



=head2 RequestValidatorId => Str

The identifier of a RequestValidator for validating the method request.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the new Method resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

