# Generated from json/callargs_class.tt

package Paws::ACMPCA::CreateCertificateAuthority;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACMPCA::Types qw/ACMPCA_Tag ACMPCA_CertificateAuthorityConfiguration ACMPCA_RevocationConfiguration/;
  has CertificateAuthorityConfiguration => (is => 'ro', isa => ACMPCA_CertificateAuthorityConfiguration, required => 1, predicate => 1);
  has CertificateAuthorityType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdempotencyToken => (is => 'ro', isa => Str, predicate => 1);
  has RevocationConfiguration => (is => 'ro', isa => ACMPCA_RevocationConfiguration, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ACMPCA_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCertificateAuthority');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ACMPCA::CreateCertificateAuthorityResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IdempotencyToken' => {
                                       'type' => 'Str'
                                     },
               'RevocationConfiguration' => {
                                              'class' => 'Paws::ACMPCA::RevocationConfiguration',
                                              'type' => 'ACMPCA_RevocationConfiguration'
                                            },
               'Tags' => {
                           'class' => 'Paws::ACMPCA::Tag',
                           'type' => 'ArrayRef[ACMPCA_Tag]'
                         },
               'CertificateAuthorityType' => {
                                               'type' => 'Str'
                                             },
               'CertificateAuthorityConfiguration' => {
                                                        'class' => 'Paws::ACMPCA::CertificateAuthorityConfiguration',
                                                        'type' => 'ACMPCA_CertificateAuthorityConfiguration'
                                                      }
             },
  'IsRequired' => {
                    'CertificateAuthorityType' => 1,
                    'CertificateAuthorityConfiguration' => 1
                  }
}
;
    return $Params_map;
  }

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
      CertificateAuthorityType => 'ROOT',
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


=head2 B<REQUIRED> CertificateAuthorityConfiguration => ACMPCA_CertificateAuthorityConfiguration

Name and bit size of the private key algorithm, the name of the signing
algorithm, and X.500 certificate subject information.



=head2 B<REQUIRED> CertificateAuthorityType => Str

The type of the certificate authority.

Valid values are: C<"ROOT">, C<"SUBORDINATE">

=head2 IdempotencyToken => Str

Alphanumeric string that can be used to distinguish between calls to
B<CreateCertificateAuthority>. Idempotency tokens time out after five
minutes. Therefore, if you call B<CreateCertificateAuthority> multiple
times with the same idempotency token within a five minute period, ACM
Private CA recognizes that you are requesting only one certificate. As
a result, ACM Private CA issues only one. If you change the idempotency
token for each call, however, ACM Private CA recognizes that you are
requesting multiple certificates.



=head2 RevocationConfiguration => ACMPCA_RevocationConfiguration

Contains a Boolean value that you can use to enable a certification
revocation list (CRL) for the CA, the name of the S3 bucket to which
ACM Private CA will write the CRL, and an optional CNAME alias that you
can use to hide the name of your bucket in the B<CRL Distribution
Points> extension of your CA certificate. For more information, see the
CrlConfiguration structure.



=head2 Tags => ArrayRef[ACMPCA_Tag]

Key-value pairs that will be attached to the new private CA. You can
associate up to 50 tags with a private CA. For information using tags
with

IAM to manage permissions, see Controlling Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

