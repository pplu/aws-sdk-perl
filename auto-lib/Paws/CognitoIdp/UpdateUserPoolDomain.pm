
package Paws::CognitoIdp::UpdateUserPoolDomain;
  use Moose;
  has CustomDomainConfig => (is => 'ro', isa => 'Paws::CognitoIdp::CustomDomainConfigType', required => 1);
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPoolDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolDomain - Arguments for method UpdateUserPoolDomain on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPoolDomain on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserPoolDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPoolDomain.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserPoolDomainResponse = $cognito -idp->UpdateUserPoolDomain(
      CustomDomainConfig => {
        CertificateArn => 'MyArnType',    # min: 20, max: 2048

      },
      Domain     => 'MyDomainType',
      UserPoolId => 'MyUserPoolIdType',

    );

    # Results:
    my $CloudFrontDomain = $UpdateUserPoolDomainResponse->CloudFrontDomain;

    # Returns a L<Paws::CognitoIdp::UpdateUserPoolDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateUserPoolDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

The configuration for a custom domain that hosts the sign-up and
sign-in pages for your application. Use this object to specify an SSL
certificate that is managed by ACM.



=head2 B<REQUIRED> Domain => Str

The domain name for the custom domain that hosts the sign-up and
sign-in pages for your application. For example: C<auth.example.com>.

This string can include only lowercase letters, numbers, and hyphens.
Do not use a hyphen for the first or last character. Use periods to
separate subdomain names.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool that is associated with the custom domain that
you are updating the certificate for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPoolDomain in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

