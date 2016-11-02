
package Paws::ApiGateway::Authorizer;
  use Moose;
  has AuthorizerCredentials => (is => 'ro', isa => 'Str');
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int');
  has AuthorizerUri => (is => 'ro', isa => 'Str');
  has AuthType => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IdentitySource => (is => 'ro', isa => 'Str');
  has IdentityValidationExpression => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');

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
(URI). For TOKEN authorizers, this must be a well-formed Lambda
function URI. The URI should be of the form
C<arn:aws:apigateway:{region}:lambda:path/{service_api}>. C<Region> is
used to determine the right endpoint. In this case, C<path> is used to
indicate that the remaining substring in the URI should be treated as
the path to the resource, including the initial C</>. For Lambda
functions, this is usually of the form
/2015-03-31/functions/[FunctionARN]/invocations


=head2 AuthType => Str

Optional customer-defined field, used in Swagger imports/exports. Has
no functional impact.


=head2 Id => Str

The identifier for the authorizer resource.


=head2 IdentitySource => Str

[Required] The source of the identity in an incoming request. For TOKEN
authorizers, this value is a mapping expression with the same syntax as
integration parameter mappings. The only valid source for tokens is
'header', so the expression should match
'method.request.header.[headerName]'. The value of the header
'[headerName]' will be interpreted as the incoming token.


=head2 IdentityValidationExpression => Str

A validation expression for the incoming identity. For TOKEN
authorizers, this value should be a regular expression. The incoming
token from the client is matched against this expression, and will
proceed if the token matches. If the token doesn't match, the client
receives a 401 Unauthorized response.


=head2 Name => Str

[Required] The name of the authorizer.


=head2 ProviderARNs => ArrayRef[Str|Undef]

A list of the provider ARNs of the authorizer.


=head2 Type => Str

[Required] The type of the authorizer. Currently, the only valid type
is TOKEN.

Valid values are: C<"TOKEN">, C<"COGNITO_USER_POOLS">
=head2 _request_id => Str


=cut

