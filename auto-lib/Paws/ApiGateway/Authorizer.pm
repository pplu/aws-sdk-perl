
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

Specifies the credentials required for the authorizer, if any. Two
options are available. To specify an IAM role for Amazon API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, specify null.


=head2 AuthorizerResultTtlInSeconds => Int

The TTL in seconds of cached authorizer results. If greater than 0, API
Gateway will cache authorizer responses. If this field is not set, the
default value is 300. The maximum value is 3600, or 1 hour.


=head2 AuthorizerUri => Str

[Required] Specifies the authorizer's Uniform Resource Identifier
(URI). For C<TOKEN> authorizers, this must be a well-formed Lambda
function URI, for example,
C<arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations>.
In general, the URI has this form
C<arn:aws:apigateway:{region}:lambda:path/{service_api}>, where
C<{region}> is the same as the region hosting the Lambda function,
C<path> indicates that the remaining substring in the URI should be
treated as the path to the resource, including the initial C</>. For
Lambda functions, this is usually of the form
/2015-03-31/functions/[FunctionARN]/invocations.


=head2 AuthType => Str

Optional customer-defined field, used in Swagger imports/exports. Has
no functional impact.


=head2 Id => Str

The identifier for the authorizer resource.


=head2 IdentitySource => Str

[Required] The source of the identity in an incoming request. For a
C<TOKEN> authorizer, this value is a mapping expression with the same
syntax as integration parameter mappings. The only valid source for
tokens is 'header', so the expression should match
'method.request.header.[headerName]'. The value of the header
'[headerName]' will be interpreted as the incoming token. For
C<COGNITO_USER_POOLS> authorizers, this property is used.


=head2 IdentityValidationExpression => Str

A validation expression for the incoming identity. For C<TOKEN>
authorizers, this value should be a regular expression. The incoming
token from the client is matched against this expression, and will
proceed if the token matches. If the token doesn't match, the client
receives a 401 Unauthorized response.


=head2 Name => Str

[Required] The name of the authorizer.


=head2 ProviderARNs => ArrayRef[Str|Undef]

A list of the provider ARNs of the authorizer. For an C<TOKEN>
authorizer, this is not defined. For authorizers of the
C<COGNITO_USER_POOLS> type, each element corresponds to a user pool ARN
of this format:
C<arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}>.


=head2 Type => Str

[Required] The type of the authorizer. Currently, the valid type is
C<TOKEN> for a Lambda function or C<COGNITO_USER_POOLS> for an Amazon
Cognito user pool.

Valid values are: C<"TOKEN">, C<"COGNITO_USER_POOLS">
=head2 _request_id => Str


=cut

