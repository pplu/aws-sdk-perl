
package Paws::ApiGateway::CreateAuthorizer;
  use Moose;
  has AuthorizerCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerCredentials');
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'authorizerResultTtlInSeconds');
  has AuthorizerUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerUri');
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has IdentitySource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySource');
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityValidationExpression');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'providerARNs');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Authorizer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateAuthorizer - Arguments for method CreateAuthorizer on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAuthorizer on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Authorizer = $apigateway->CreateAuthorizer(
      Name                         => 'MyString',
      RestApiId                    => 'MyString',
      Type                         => 'TOKEN',
      AuthType                     => 'MyString',                  # OPTIONAL
      AuthorizerCredentials        => 'MyString',                  # OPTIONAL
      AuthorizerResultTtlInSeconds => 1,                           # OPTIONAL
      AuthorizerUri                => 'MyString',                  # OPTIONAL
      IdentitySource               => 'MyString',                  # OPTIONAL
      IdentityValidationExpression => 'MyString',                  # OPTIONAL
      ProviderARNs                 => [ 'MyProviderARN', ... ],    # OPTIONAL
    );

    # Results:
    my $AuthType              = $Authorizer->AuthType;
    my $AuthorizerCredentials = $Authorizer->AuthorizerCredentials;
    my $AuthorizerResultTtlInSeconds =
      $Authorizer->AuthorizerResultTtlInSeconds;
    my $AuthorizerUri  = $Authorizer->AuthorizerUri;
    my $Id             = $Authorizer->Id;
    my $IdentitySource = $Authorizer->IdentitySource;
    my $IdentityValidationExpression =
      $Authorizer->IdentityValidationExpression;
    my $Name         = $Authorizer->Name;
    my $ProviderARNs = $Authorizer->ProviderARNs;
    my $Type         = $Authorizer->Type;

    # Returns a L<Paws::ApiGateway::Authorizer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateAuthorizer>

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



=head2 B<REQUIRED> Name => Str

[Required] The name of the authorizer.



=head2 ProviderARNs => ArrayRef[Str|Undef]

A list of the Amazon Cognito user pool ARNs for the
C<COGNITO_USER_POOLS> authorizer. Each element is of this format:
C<arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}>.
For a C<TOKEN> or C<REQUEST> authorizer, this is not defined.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> Type => Str

[Required] The authorizer type. Valid values are C<TOKEN> for a Lambda
function using a single authorization token submitted in a custom
header, C<REQUEST> for a Lambda function using incoming request
parameters, and C<COGNITO_USER_POOLS> for using an Amazon Cognito user
pool.

Valid values are: C<"TOKEN">, C<"REQUEST">, C<"COGNITO_USER_POOLS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAuthorizer in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

