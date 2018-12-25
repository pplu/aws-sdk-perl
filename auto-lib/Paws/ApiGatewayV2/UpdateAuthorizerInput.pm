package Paws::ApiGatewayV2::UpdateAuthorizerInput;
  use Moose;
  has AuthorizerCredentialsArn => (is => 'ro', isa => 'Str', request_name => 'authorizerCredentialsArn', traits => ['NameInRequest']);
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', request_name => 'authorizerResultTtlInSeconds', traits => ['NameInRequest']);
  has AuthorizerType => (is => 'ro', isa => 'Str', request_name => 'authorizerType', traits => ['NameInRequest']);
  has AuthorizerUri => (is => 'ro', isa => 'Str', request_name => 'authorizerUri', traits => ['NameInRequest']);
  has IdentitySource => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'identitySource', traits => ['NameInRequest']);
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', request_name => 'identityValidationExpression', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ProviderArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'providerArns', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateAuthorizerInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateAuthorizerInput object:

  $service_obj->Method(Att1 => { AuthorizerCredentialsArn => $value, ..., ProviderArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateAuthorizerInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizerCredentialsArn

=head1 DESCRIPTION

The input parameters for an UpdateAuthorizer request.

=head1 ATTRIBUTES


=head2 AuthorizerCredentialsArn => Str

  Specifies the required credentials as an IAM role for API Gateway to
invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use
resource-based permissions on the Lambda function, specify null.


=head2 AuthorizerResultTtlInSeconds => Int

  The time to live (TTL), in seconds, of cached authorizer results. If it
is zero, authorization caching is disabled. If it is greater than zero,
API Gateway will cache authorizer responses. If this field is not set,
the default value is 300. The maximum value is 3600, or 1 hour.


=head2 AuthorizerType => Str

  The authorizer type. Currently the only valid value is REQUEST, for a
Lambda function using incoming request parameters.


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

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

