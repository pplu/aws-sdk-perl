
package Paws::ACMPCA::CreateCertificateAuthority;
  use Moose;
  has CertificateAuthorityConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::CertificateAuthorityConfiguration', required => 1);
  has CertificateAuthorityType => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has KeyStorageSecurityStandard => (is => 'ro', isa => 'Str');
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
          Country    => 'MyCountryCodeString',    # min: 2, max: 2; OPTIONAL
          DistinguishedNameQualifier =>
            'MyASN1PrintableString64',            # max: 64; OPTIONAL
          GenerationQualifier => 'MyString3',               # max: 3; OPTIONAL
          GivenName           => 'MyString16',              # max: 16; OPTIONAL
          Initials            => 'MyString5',               # max: 5; OPTIONAL
          Locality            => 'MyString128',             # max: 128; OPTIONAL
          Organization        => 'MyString64',              # max: 64; OPTIONAL
          OrganizationalUnit  => 'MyString64',              # max: 64; OPTIONAL
          Pseudonym           => 'MyString128',             # max: 128; OPTIONAL
          SerialNumber        => 'MyASN1PrintableString64', # max: 64; OPTIONAL
          State               => 'MyString128',             # max: 128; OPTIONAL
          Surname             => 'MyString40',              # max: 40; OPTIONAL
          Title               => 'MyString64',              # max: 64; OPTIONAL
        },
        CsrExtensions => {
          KeyUsage => {
            CRLSign          => 1,    # OPTIONAL
            DataEncipherment => 1,    # OPTIONAL
            DecipherOnly     => 1,    # OPTIONAL
            DigitalSignature => 1,    # OPTIONAL
            EncipherOnly     => 1,    # OPTIONAL
            KeyAgreement     => 1,    # OPTIONAL
            KeyCertSign      => 1,    # OPTIONAL
            KeyEncipherment  => 1,    # OPTIONAL
            NonRepudiation   => 1,    # OPTIONAL
          },    # OPTIONAL
          SubjectInformationAccess => [
            {
              AccessLocation => {
                DirectoryName => {
                  CommonName => 'MyString64',         # max: 64; OPTIONAL
                  Country => 'MyCountryCodeString',   # min: 2, max: 2; OPTIONAL
                  DistinguishedNameQualifier =>
                    'MyASN1PrintableString64',        # max: 64; OPTIONAL
                  GenerationQualifier => 'MyString3',      # max: 3; OPTIONAL
                  GivenName           => 'MyString16',     # max: 16; OPTIONAL
                  Initials            => 'MyString5',      # max: 5; OPTIONAL
                  Locality            => 'MyString128',    # max: 128; OPTIONAL
                  Organization        => 'MyString64',     # max: 64; OPTIONAL
                  OrganizationalUnit  => 'MyString64',     # max: 64; OPTIONAL
                  Pseudonym           => 'MyString128',    # max: 128; OPTIONAL
                  SerialNumber => 'MyASN1PrintableString64', # max: 64; OPTIONAL
                  State        => 'MyString128',    # max: 128; OPTIONAL
                  Surname      => 'MyString40',     # max: 40; OPTIONAL
                  Title        => 'MyString64',     # max: 64; OPTIONAL
                },
                DnsName      => 'MyString253',      # max: 253; OPTIONAL
                EdiPartyName => {
                  PartyName    => 'MyString256',    # max: 256
                  NameAssigner => 'MyString256',    # max: 256
                },    # OPTIONAL
                IpAddress => 'MyString39',    # max: 39; OPTIONAL
                OtherName => {
                  TypeId => 'MyCustomObjectIdentifier',    # max: 64
                  Value  => 'MyString256',                 # max: 256

                },    # OPTIONAL
                RegisteredId => 'MyCustomObjectIdentifier',    # max: 64
                Rfc822Name   => 'MyString256',                 # max: 256
                UniformResourceIdentifier => 'MyString253', # max: 253; OPTIONAL
              },
              AccessMethod => {
                AccessMethodType => 'CA_REPOSITORY'
                , # values: CA_REPOSITORY, RESOURCE_PKI_MANIFEST, RESOURCE_PKI_NOTIFY; OPTIONAL
                CustomObjectIdentifier => 'MyCustomObjectIdentifier',  # max: 64
              },

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },
      CertificateAuthorityType   => 'ROOT',
      IdempotencyToken           => 'MyIdempotencyToken',             # OPTIONAL
      KeyStorageSecurityStandard => 'FIPS_140_2_LEVEL_2_OR_HIGHER',   # OPTIONAL
      RevocationConfiguration    => {
        CrlConfiguration => {
          Enabled          => 1,                   # OPTIONAL
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
      ],    # OPTIONAL
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

The type of the certificate authority.

Valid values are: C<"ROOT">, C<"SUBORDINATE">

=head2 IdempotencyToken => Str

Custom string that can be used to distinguish between calls to the
B<CreateCertificateAuthority> action. Idempotency tokens for
B<CreateCertificateAuthority> time out after five minutes. Therefore,
if you call B<CreateCertificateAuthority> multiple times with the same
idempotency token within five minutes, ACM Private CA recognizes that
you are requesting only certificate authority and will issue only one.
If you change the idempotency token for each call, PCA recognizes that
you are requesting multiple certificate authorities.



=head2 KeyStorageSecurityStandard => Str

Specifies a cryptographic key management compliance standard used for
handling CA keys.

Default: FIPS_140_2_LEVEL_3_OR_HIGHER

Note: AWS Region ap-northeast-3 supports only
FIPS_140_2_LEVEL_2_OR_HIGHER. You must explicitly specify this
parameter and value when creating a CA in that Region. Specifying a
different value (or no value) results in an C<InvalidArgsException>
with the message "A certificate authority cannot be created in this
region with the specified security standard."

Valid values are: C<"FIPS_140_2_LEVEL_2_OR_HIGHER">, C<"FIPS_140_2_LEVEL_3_OR_HIGHER">

=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Contains a Boolean value that you can use to enable a certification
revocation list (CRL) for the CA, the name of the S3 bucket to which
ACM Private CA will write the CRL, and an optional CNAME alias that you
can use to hide the name of your bucket in the B<CRL Distribution
Points> extension of your CA certificate. For more information, see the
CrlConfiguration
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html)
structure.



=head2 Tags => ArrayRef[L<Paws::ACMPCA::Tag>]

Key-value pairs that will be attached to the new private CA. You can
associate up to 50 tags with a private CA. For information using tags
with IAM to manage permissions, see Controlling Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

