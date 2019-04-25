
package Paws::CognitoIdp::CreateUserPoolDomain;
  use Moose;
  has CustomDomainConfig => (is => 'ro', isa => 'Paws::CognitoIdp::CustomDomainConfigType');
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPoolDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolDomain - Arguments for method CreateUserPoolDomain on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolDomain on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPoolDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolDomain.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateUserPoolDomainResponse = $cognito -idp->CreateUserPoolDomain(
      Domain             => 'MyDomainType',
      UserPoolId         => 'MyUserPoolIdType',
      CustomDomainConfig => {
        CertificateArn => 'MyArnType',    # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $CloudFrontDomain = $CreateUserPoolDomainResponse->CloudFrontDomain;

    # Returns a L<Paws::CognitoIdp::CreateUserPoolDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/CreateUserPoolDomain>

=head1 ATTRIBUTES


=head2 CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

The configuration for a custom domain that hosts the sign-up and
sign-in webpages for your application.

Provide this parameter only if you want to use a custom domain for your
user pool. Otherwise, you can exclude this parameter and use the Amazon
Cognito hosted domain instead.

For more information about the hosted domain and custom domains, see
Configuring a User Pool Domain
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html).



=head2 B<REQUIRED> Domain => Str

The domain string.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolDomain in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

