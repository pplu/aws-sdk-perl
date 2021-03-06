# Generated by default/object.tt
package Paws::ApiGatewayV2::Authorizer;
  use Moose;
  has AuthorizerCredentialsArn => (is => 'ro', isa => 'Str', request_name => 'authorizerCredentialsArn', traits => ['NameInRequest']);
  has AuthorizerId => (is => 'ro', isa => 'Str', request_name => 'authorizerId', traits => ['NameInRequest']);
  has AuthorizerPayloadFormatVersion => (is => 'ro', isa => 'Str', request_name => 'authorizerPayloadFormatVersion', traits => ['NameInRequest']);
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', request_name => 'authorizerResultTtlInSeconds', traits => ['NameInRequest']);
  has AuthorizerType => (is => 'ro', isa => 'Str', request_name => 'authorizerType', traits => ['NameInRequest']);
  has AuthorizerUri => (is => 'ro', isa => 'Str', request_name => 'authorizerUri', traits => ['NameInRequest']);
  has EnableSimpleResponses => (is => 'ro', isa => 'Bool', request_name => 'enableSimpleResponses', traits => ['NameInRequest']);
  has IdentitySource => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'identitySource', traits => ['NameInRequest']);
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', request_name => 'identityValidationExpression', traits => ['NameInRequest']);
  has JwtConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::JWTConfiguration', request_name => 'jwtConfiguration', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Authorizer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Authorizer object:

  $service_obj->Method(Att1 => { AuthorizerCredentialsArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Authorizer object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizerCredentialsArn

=head1 DESCRIPTION

Represents an authorizer.

=head1 ATTRIBUTES


=head2 AuthorizerCredentialsArn => Str

Specifies the required credentials as an IAM role for API Gateway to
invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, don't specify this
parameter. Supported only for REQUEST authorizers.


=head2 AuthorizerId => Str

The authorizer identifier.


=head2 AuthorizerPayloadFormatVersion => Str

Specifies the format of the payload sent to an HTTP API Lambda
authorizer. Required for HTTP API Lambda authorizers. Supported values
are 1.0 and 2.0. To learn more, see Working with AWS Lambda authorizers
for HTTP APIs
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html).


=head2 AuthorizerResultTtlInSeconds => Int

The time to live (TTL) for cached authorizer results, in seconds. If it
equals 0, authorization caching is disabled. If it is greater than 0,
API Gateway caches authorizer responses. The maximum value is 3600, or
1 hour. Supported only for HTTP API Lambda authorizers.


=head2 AuthorizerType => Str

The authorizer type. Specify REQUEST for a Lambda function using
incoming request parameters. Specify JWT to use JSON Web Tokens
(supported only for HTTP APIs).


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


=head2 EnableSimpleResponses => Bool

Specifies whether a Lambda authorizer returns a response in a simple
format. If enabled, the Lambda authorizer can return a boolean value
instead of an IAM policy. Supported only for HTTP APIs. To learn more,
see Working with AWS Lambda authorizers for HTTP APIs
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html)


=head2 IdentitySource => ArrayRef[Str|Undef]

The identity source for which authorization is requested.

For a REQUEST authorizer, this is optional. The value is a set of one
or more mapping expressions of the specified request parameters. The
identity source can be headers, query string parameters, stage
variables, and context parameters. For example, if an Auth header and a
Name query string parameter are defined as identity sources, this value
is route.request.header.Auth, route.request.querystring.Name for
WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
$, for example, $request.header.Auth, $request.querystring.Name. These
parameters are used to perform runtime validation for Lambda-based
authorizers by verifying all of the identity-related request parameters
are present in the request, not null, and non-empty. Only when this is
true does the authorizer invoke the authorizer Lambda function.
Otherwise, it returns a 401 Unauthorized response without calling the
Lambda function. For HTTP APIs, identity sources are also used as the
cache key when caching is enabled. To learn more, see Working with AWS
Lambda authorizers for HTTP APIs
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html).

For JWT, a single entry that specifies where to extract the JSON Web
Token (JWT) from inbound requests. Currently only header-based and
query parameter-based selections are supported, for example
$request.header.Authorization.


=head2 IdentityValidationExpression => Str

The validation expression does not apply to the REQUEST authorizer.


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

