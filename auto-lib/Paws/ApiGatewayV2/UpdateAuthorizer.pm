
package Paws::ApiGatewayV2::UpdateAuthorizer;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AuthorizerCredentialsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerCredentialsArn');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerId', required => 1);
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'authorizerResultTtlInSeconds');
  has AuthorizerType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerType');
  has AuthorizerUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerUri');
  has IdentitySource => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'identitySource');
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityValidationExpression');
  has JwtConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::JWTConfiguration', traits => ['NameInRequest'], request_name => 'jwtConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/authorizers/{authorizerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateAuthorizer - Arguments for method UpdateAuthorizer on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAuthorizer on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateAuthorizerResponse = $apigateway->UpdateAuthorizer(
      ApiId                        => 'My__string',
      AuthorizerId                 => 'My__string',
      AuthorizerCredentialsArn     => 'MyArn',        # OPTIONAL
      AuthorizerResultTtlInSeconds => 1,              # OPTIONAL
      AuthorizerType               => 'REQUEST',      # OPTIONAL
      AuthorizerUri => 'MyUriWithLengthBetween1And2048',    # OPTIONAL
      IdentitySource => [ 'My__string', ... ],              # OPTIONAL
      IdentityValidationExpression =>
        'MyStringWithLengthBetween0And1024',                # OPTIONAL
      JwtConfiguration => {
        Audience => [ 'My__string', ... ],                  # OPTIONAL
        Issuer => 'MyUriWithLengthBetween1And2048',
      },    # OPTIONAL
      Name => 'MyStringWithLengthBetween1And128',    # OPTIONAL
    );

    # Results:
    my $AuthorizerCredentialsArn =
      $UpdateAuthorizerResponse->AuthorizerCredentialsArn;
    my $AuthorizerId = $UpdateAuthorizerResponse->AuthorizerId;
    my $AuthorizerResultTtlInSeconds =
      $UpdateAuthorizerResponse->AuthorizerResultTtlInSeconds;
    my $AuthorizerType = $UpdateAuthorizerResponse->AuthorizerType;
    my $AuthorizerUri  = $UpdateAuthorizerResponse->AuthorizerUri;
    my $IdentitySource = $UpdateAuthorizerResponse->IdentitySource;
    my $IdentityValidationExpression =
      $UpdateAuthorizerResponse->IdentityValidationExpression;
    my $JwtConfiguration = $UpdateAuthorizerResponse->JwtConfiguration;
    my $Name             = $UpdateAuthorizerResponse->Name;

    # Returns a L<Paws::ApiGatewayV2::UpdateAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 AuthorizerCredentialsArn => Str

Specifies the required credentials as an IAM role for API Gateway to
invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, specify null.



=head2 B<REQUIRED> AuthorizerId => Str

The authorizer identifier.



=head2 AuthorizerResultTtlInSeconds => Int

Authorizer caching is not currently supported. Don't specify this value
for authorizers.



=head2 AuthorizerType => Str

The authorizer type. For WebSocket APIs, specify REQUEST for a Lambda
function using incoming request parameters. For HTTP APIs, specify JWT
to use JSON Web Tokens.

Valid values are: C<"REQUEST">, C<"JWT">

=head2 AuthorizerUri => Str

The authorizer's Uniform Resource Identifier (URI). For REQUEST
authorizers, this must be a well-formed Lambda function URI, for
example,
arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations.
In general, the URI has this form:
arn:aws:apigateway:{region}:lambda:path/{service_api} , where {region}
is the same as the region hosting the Lambda function, path indicates
that the remaining substring in the URI should be treated as the path
to the resource, including the initial /. For Lambda functions, this is
usually of the form /2015-03-31/functions/[FunctionARN]/invocations.
Supported only for REQUEST authorizers.



=head2 IdentitySource => ArrayRef[Str|Undef]

The identity source for which authorization is requested.

For a REQUEST authorizer, this is optional. The value is a set of one
or more mapping expressions of the specified request parameters.
Currently, the identity source can be headers, query string parameters,
stage variables, and context parameters. For example, if an Auth header
and a Name query string parameter are defined as identity sources, this
value is route.request.header.Auth, route.request.querystring.Name.
These parameters will be used to perform runtime validation for
Lambda-based authorizers by verifying all of the identity-related
request parameters are present in the request, not null, and non-empty.
Only when this is true does the authorizer invoke the authorizer Lambda
function. Otherwise, it returns a 401 Unauthorized response without
calling the Lambda function.

For JWT, a single entry that specifies where to extract the JSON Web
Token (JWT) from inbound requests. Currently only header-based and
query parameter-based selections are supported, for example
"$request.header.Authorization".



=head2 IdentityValidationExpression => Str

This parameter is not used.



=head2 JwtConfiguration => L<Paws::ApiGatewayV2::JWTConfiguration>

Represents the configuration of a JWT authorizer. Required for the JWT
authorizer type. Supported only for HTTP APIs.



=head2 Name => Str

The name of the authorizer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuthorizer in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

