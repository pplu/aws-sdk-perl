
package Paws::ACMPCA::CreateCertificateAuthority;
  use Moose;
  has CertificateAuthorityConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::CertificateAuthorityConfiguration', required => 1);
  has CertificateAuthorityType => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has RevocationConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::RevocationConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ACMPCA::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::CreateCertificateAuthorityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreateCertificateAuthority - Arguments for method CreateCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method CreateCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $CreateCertificateAuthorityResponse =
      $acm -pca->CreateCertificateAuthority(
      CertificateAuthorityConfiguration => {
        KeyAlgorithm =>
          'RSA_2048',  # values: RSA_2048, RSA_4096, EC_prime256v1, EC_secp384r1
        SigningAlgorithm => 'SHA256WITHECDSA'
        , # values: SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
        Subject => {
          CommonName => 'MyString64',             # max: 64; OPTIONAL
          Country    => 'MyCountryCodeString',    # OPTIONAL
          DistinguishedNameQualifier =>
            'MyDistinguishedNameQualifierString',    # max: 64; OPTIONAL
          GenerationQualifier => 'MyString3',        # max: 3; OPTIONAL
          GivenName           => 'MyString16',       # max: 16; OPTIONAL
          Initials            => 'MyString5',        # max: 5; OPTIONAL
          Locality            => 'MyString128',      # max: 128; OPTIONAL
          Organization        => 'MyString64',       # max: 64; OPTIONAL
          OrganizationalUnit  => 'MyString64',       # max: 64; OPTIONAL
          Pseudonym           => 'MyString128',      # max: 128; OPTIONAL
          SerialNumber        => 'MyString64',       # max: 64; OPTIONAL
          State               => 'MyString128',      # max: 128; OPTIONAL
          Surname             => 'MyString40',       # max: 40; OPTIONAL
          Title               => 'MyString64',       # max: 64; OPTIONAL
        },

      },
      CertificateAuthorityType => 'SUBORDINATE',
      IdempotencyToken         => 'MyIdempotencyToken',    # OPTIONAL
      RevocationConfiguration  => {
        CrlConfiguration => {
          Enabled          => 1,
          CustomCname      => 'MyString253',       # max: 253; OPTIONAL
          ExpirationInDays => 1,                   # min: 1, max: 5000; OPTIONAL
          S3BucketName     => 'MyString3To255',    # min: 3, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $CertificateAuthorityArn =
      $CreateCertificateAuthorityResponse->CertificateAuthorityArn;

    # Returns a L<Paws::ACMPCA::CreateCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/CreateCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityConfiguration => L<Paws::ACMPCA::CertificateAuthorityConfiguration>

Name and bit size of the private key algorithm, the name of the signing
algorithm, and X.500 certificate subject information.



=head2 B<REQUIRED> CertificateAuthorityType => Str

The type of the certificate authority. Currently, this must be
B<SUBORDINATE>.

Valid values are: C<"SUBORDINATE">

=head2 IdempotencyToken => Str

Alphanumeric string that can be used to distinguish between calls to
B<CreateCertificateAuthority>. Idempotency tokens time out after five
minutes. Therefore, if you call B<CreateCertificateAuthority> multiple
times with the same idempotency token within a five minute period, ACM
PCA recognizes that you are requesting only one certificate. As a
result, ACM PCA issues only one. If you change the idempotency token
for each call, however, ACM PCA recognizes that you are requesting
multiple certificates.



=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Contains a Boolean value that you can use to enable a certification
revocation list (CRL) for the CA, the name of the S3 bucket to which
ACM PCA will write the CRL, and an optional CNAME alias that you can
use to hide the name of your bucket in the B<CRL Distribution Points>
extension of your CA certificate. For more information, see the
CrlConfiguration structure.



=head2 Tags => ArrayRef[L<Paws::ACMPCA::Tag>]

Key-value pairs that will be attached to the new private CA. You can
associate up to 50 tags with a private CA.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

