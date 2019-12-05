package Paws::ApiGatewayV2::CreateAuthorizerInput;
  use Moose;
  has AuthorizerCredentialsArn => (is => 'ro', isa => 'Str', request_name => 'authorizerCredentialsArn', traits => ['NameInRequest']);
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', request_name => 'authorizerResultTtlInSeconds', traits => ['NameInRequest']);
  has AuthorizerType => (is => 'ro', isa => 'Str', request_name => 'authorizerType', traits => ['NameInRequest'], required => 1);
  has AuthorizerUri => (is => 'ro', isa => 'Str', request_name => 'authorizerUri', traits => ['NameInRequest']);
  has IdentitySource => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'identitySource', traits => ['NameInRequest'], required => 1);
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', request_name => 'identityValidationExpression', traits => ['NameInRequest']);
  has JwtConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::JWTConfiguration', request_name => 'jwtConfiguration', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateAuthorizerInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateAuthorizerInput object:

  $service_obj->Method(Att1 => { AuthorizerCredentialsArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateAuthorizerInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizerCredentialsArn

=head1 DESCRIPTION

Represents the input parameters for a CreateAuthorizer request.

=head1 ATTRIBUTES


=head2 AuthorizerCredentialsArn => Str

  Specifies the required credentials as an IAM role for API Gateway to
invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, specify null.
Supported only for REQUEST authorizers.


=head2 AuthorizerResultTtlInSeconds => Int

  Authorizer caching is not currently supported. Don't specify this value
for authorizers.


=head2 B<REQUIRED> AuthorizerType => Str

  The authorizer type. For WebSocket APIs, specify REQUEST for a Lambda
function using incoming request parameters. For HTTP APIs, specify JWT
to use JSON Web Tokens.


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


=head2 B<REQUIRED> IdentitySource => ArrayRef[Str|Undef]

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
Token (JWT )from inbound requests. Currently only header-based and
query parameter-based selections are supported, for example
"$request.header.Authorization".


=head2 IdentityValidationExpression => Str

  This parameter is not used.


=head2 JwtConfiguration => L<Paws::ApiGatewayV2::JWTConfiguration>

  Represents the configuration of a JWT authorizer. Required for the JWT
authorizer type. Supported only for HTTP APIs.


=head2 B<REQUIRED> Name => Str

  The name of the authorizer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

