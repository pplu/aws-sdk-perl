
package Paws::ApiGateway::Authorizer;
  use Moose;
  has AuthorizerCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerCredentials');
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'authorizerResultTtlInSeconds');
  has AuthorizerUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerUri');
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IdentitySource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySource');
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityValidationExpression');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'providerARNs');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Authorizer

=head1 ATTRIBUTES


=head2 AuthorizerCredentials => Str

Specifies the required credentials as an IAM role for API Gateway to
invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, specify null.


=head2 AuthorizerResultTtlInSeconds => Int

The TTL in seconds of cached authorizer results. If it equals 0,
authorization caching is disabled. If it is greater than 0, API Gateway
will cache authorizer responses. If this field is not set, the default
value is 300. The maximum value is 3600, or 1 hour.


=head2 AuthorizerUri => Str

Specifies the authorizer's Uniform Resource Identifier (URI). For
C<TOKEN> or C<REQUEST> authorizers, this must be a well-formed Lambda
function URI, for example,
C<arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations>.
In general, the URI has this form
C<arn:aws:apigateway:{region}:lambda:path/{service_api}>, where
C<{region}> is the same as the region hosting the Lambda function,
C<path> indicates that the remaining substring in the URI should be
treated as the path to the resource, including the initial C</>. For
Lambda functions, this is usually of the form
C</2015-03-31/functions/[FunctionARN]/invocations>.


=head2 AuthType => Str

Optional customer-defined field, used in OpenAPI imports and exports
without functional impact.


=head2 Id => Str

The identifier for the authorizer resource.


=head2 IdentitySource => Str

The identity source for which authorization is requested.

=over

=item * For a C<TOKEN> or C<COGNITO_USER_POOLS> authorizer, this is
required and specifies the request header mapping expression for the
custom header holding the authorization token submitted by the client.
For example, if the token header name is C<Auth>, the header mapping
expression is C<method.request.header.Auth>.

=item * For the C<REQUEST> authorizer, this is required when
authorization caching is enabled. The value is a comma-separated string
of one or more mapping expressions of the specified request parameters.
For example, if an C<Auth> header, a C<Name> query string parameter are
defined as identity sources, this value is
C<method.request.header.Auth, method.request.querystring.Name>. These
parameters will be used to derive the authorization caching key and to
perform runtime validation of the C<REQUEST> authorizer by verifying
all of the identity-related request parameters are present, not null
and non-empty. Only when this is true does the authorizer invoke the
authorizer Lambda function, otherwise, it returns a 401 Unauthorized
response without calling the Lambda function. The valid value is a
string of comma-separated mapping expressions of the specified request
parameters. When the authorization caching is not enabled, this
property is optional.

=back



=head2 IdentityValidationExpression => Str

A validation expression for the incoming identity token. For C<TOKEN>
authorizers, this value is a regular expression. API Gateway will match
the C<aud> field of the incoming token from the client against the
specified regular expression. It will invoke the authorizer's Lambda
function when there is a match. Otherwise, it will return a 401
Unauthorized response without calling the Lambda function. The
validation expression does not apply to the C<REQUEST> authorizer.


=head2 Name => Str

[Required] The name of the authorizer.


=head2 ProviderARNs => ArrayRef[Str|Undef]

A list of the Amazon Cognito user pool ARNs for the
C<COGNITO_USER_POOLS> authorizer. Each element is of this format:
C<arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}>.
For a C<TOKEN> or C<REQUEST> authorizer, this is not defined.


=head2 Type => Str

The authorizer type. Valid values are C<TOKEN> for a Lambda function
using a single authorization token submitted in a custom header,
C<REQUEST> for a Lambda function using incoming request parameters, and
C<COGNITO_USER_POOLS> for using an Amazon Cognito user pool.

Valid values are: C<"TOKEN">, C<"REQUEST">, C<"COGNITO_USER_POOLS">
=head2 _request_id => Str


=cut

