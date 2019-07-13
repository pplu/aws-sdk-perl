
package Paws::ApiGatewayV2::GetAuthorizer;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/authorizers/{authorizerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetAuthorizer - Arguments for method GetAuthorizer on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthorizer on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetAuthorizerResponse = $apigateway->GetAuthorizer(
      ApiId        => 'My__string',
      AuthorizerId => 'My__string',

    );

    # Results:
    my $AuthorizerCredentialsArn =
      $GetAuthorizerResponse->AuthorizerCredentialsArn;
    my $AuthorizerId = $GetAuthorizerResponse->AuthorizerId;
    my $AuthorizerResultTtlInSeconds =
      $GetAuthorizerResponse->AuthorizerResultTtlInSeconds;
    my $AuthorizerType = $GetAuthorizerResponse->AuthorizerType;
    my $AuthorizerUri  = $GetAuthorizerResponse->AuthorizerUri;
    my $IdentitySource = $GetAuthorizerResponse->IdentitySource;
    my $IdentityValidationExpression =
      $GetAuthorizerResponse->IdentityValidationExpression;
    my $Name         = $GetAuthorizerResponse->Name;
    my $ProviderArns = $GetAuthorizerResponse->ProviderArns;

    # Returns a L<Paws::ApiGatewayV2::GetAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> AuthorizerId => Str

The authorizer identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthorizer in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

