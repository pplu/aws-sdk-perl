
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
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProviderArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'providerArns');

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
      Name => 'MyStringWithLengthBetween1And128',           # OPTIONAL
      ProviderArns => [ 'MyArn', ... ],                     # OPTIONAL
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
    my $Name         = $UpdateAuthorizerResponse->Name;
    my $ProviderArns = $UpdateAuthorizerResponse->ProviderArns;

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

The time to live (TTL), in seconds, of cached authorizer results. If it
is zero, authorization caching is disabled. If it is greater than zero,
API Gateway will cache authorizer responses. If this field is not set,
the default value is 300. The maximum value is 3600, or 1 hour.



=head2 AuthorizerType => Str

The authorizer type. Currently the only valid value is REQUEST, for a
Lambda function using incoming request parameters.

Valid values are: C<"REQUEST">

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



=head2 IdentitySource => ArrayRef[Str|Undef]

The identity source for which authorization is requested.

For the REQUEST authorizer, this is required when authorization caching
is enabled. The value is a comma-separated string of one or more
mapping expressions of the specified request parameters. For example,
if an Auth header, a Name query string parameter are defined as
identity sources, this value is $method.request.header.Auth,
$method.request.querystring.Name. These parameters will be used to
derive the authorization caching key and to perform runtime validation
of the REQUEST authorizer by verifying all of the identity-related
request parameters are present, not null and non-empty. Only when this
is true does the authorizer invoke the authorizer Lambda function,
otherwise, it returns a 401 Unauthorized response without calling the
Lambda function. The valid value is a string of comma-separated mapping
expressions of the specified request parameters. When the authorization
caching is not enabled, this property is optional.



=head2 IdentityValidationExpression => Str

The validation expression does not apply to the REQUEST authorizer.



=head2 Name => Str

The name of the authorizer.



=head2 ProviderArns => ArrayRef[Str|Undef]

For REQUEST authorizer, this is not defined.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuthorizer in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

