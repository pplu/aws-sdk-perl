
package Paws::ACMPCA::IssueCertificate;
  use Moose;
  has ApiPassthrough => (is => 'ro', isa => 'Paws::ACMPCA::ApiPassthrough');
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has Csr => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str');
  has Validity => (is => 'ro', isa => 'Paws::ACMPCA::Validity', required => 1);
  has ValidityNotBefore => (is => 'ro', isa => 'Paws::ACMPCA::Validity');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IssueCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::IssueCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::IssueCertificate - Arguments for method IssueCertificate on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IssueCertificate on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method IssueCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IssueCertificate.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $IssueCertificateResponse = $acm -pca->IssueCertificate(
      CertificateAuthorityArn => 'MyArn',
      Csr                     => 'BlobCsrBlob',
      SigningAlgorithm        => 'SHA256WITHECDSA',
      Validity                => {
        Type  => 'END_DATE',   # values: END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
        Value => 1,            # min: 1

      },
      ApiPassthrough => {
        Extensions => {
          CertificatePolicies => [
            {
              CertPolicyId     => 'MyCustomObjectIdentifier',    # max: 64
              PolicyQualifiers => [
                {
                  PolicyQualifierId => 'CPS',                    # values: CPS
                  Qualifier         => {
                    CpsUri => 'MyString256',                     # max: 256

                  },

                },
                ...
              ],    # min: 1, max: 20; OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
          ExtendedKeyUsage => [
            {
              ExtendedKeyUsageObjectIdentifier =>
                'MyCustomObjectIdentifier',    # max: 64
              ExtendedKeyUsageType => 'SERVER_AUTH'
              , # values: SERVER_AUTH, CLIENT_AUTH, CODE_SIGNING, EMAIL_PROTECTION, TIME_STAMPING, OCSP_SIGNING, SMART_CARD_LOGIN, DOCUMENT_SIGNING, CERTIFICATE_TRANSPARENCY; OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
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
          SubjectAlternativeNames => [
            {
              DirectoryName => {
                CommonName => 'MyString64',           # max: 64; OPTIONAL
                Country    => 'MyCountryCodeString',  # min: 2, max: 2; OPTIONAL
                DistinguishedNameQualifier =>
                  'MyASN1PrintableString64',          # max: 64; OPTIONAL
                GenerationQualifier => 'MyString3',   # max: 3; OPTIONAL
                GivenName           => 'MyString16',  # max: 16; OPTIONAL
                Initials            => 'MyString5',   # max: 5; OPTIONAL
                Locality            => 'MyString128', # max: 128; OPTIONAL
                Organization        => 'MyString64',  # max: 64; OPTIONAL
                OrganizationalUnit  => 'MyString64',  # max: 64; OPTIONAL
                Pseudonym           => 'MyString128', # max: 128; OPTIONAL
                SerialNumber => 'MyASN1PrintableString64',  # max: 64; OPTIONAL
                State        => 'MyString128',              # max: 128; OPTIONAL
                Surname      => 'MyString40',               # max: 40; OPTIONAL
                Title        => 'MyString64',               # max: 64; OPTIONAL
              },    # OPTIONAL
              DnsName      => 'MyString253',    # max: 253; OPTIONAL
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
              UniformResourceIdentifier => 'MyString253',   # max: 253; OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
        },    # OPTIONAL
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
        },    # OPTIONAL
      },    # OPTIONAL
      IdempotencyToken  => 'MyIdempotencyToken',    # OPTIONAL
      TemplateArn       => 'MyArn',                 # OPTIONAL
      ValidityNotBefore => {
        Type  => 'END_DATE',   # values: END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
        Value => 1,            # min: 1

      },    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $IssueCertificateResponse->CertificateArn;

    # Returns a L<Paws::ACMPCA::IssueCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/IssueCertificate>

=head1 ATTRIBUTES


=head2 ApiPassthrough => L<Paws::ACMPCA::ApiPassthrough>

Specifies X.509 certificate information to be included in the issued
certificate. An C<APIPassthrough> or C<APICSRPassthrough> template
variant must be selected, or else this parameter is ignored. For more
information about using these templates, see Understanding Certificate
Templates
(https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html).

If conflicting or duplicate certificate information is supplied during
certificate issuance, ACM Private CA applies order of operation rules
(https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations)
to determine what information is used.



=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html).
This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> Csr => Str

The certificate signing request (CSR) for the certificate you want to
issue. As an example, you can use the following OpenSSL command to
create the CSR and a 2048 bit RSA private key.

C<openssl req -new -newkey rsa:2048 -days 365 -keyout
private/test_cert_priv_key.pem -out csr/test_cert_.csr>

If you have a configuration file, you can then use the following
OpenSSL command. The C<usr_cert> block in the configuration file
contains your X509 version 3 extensions.

C<openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey
rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out
csr/test_cert_.csr>

Note: A CSR must provide either a I<subject name> or a I<subject
alternative name> or the request will be rejected.



=head2 IdempotencyToken => Str

Alphanumeric string that can be used to distinguish between calls to
the B<IssueCertificate> action. Idempotency tokens for
B<IssueCertificate> time out after one minute. Therefore, if you call
B<IssueCertificate> multiple times with the same idempotency token
within one minute, ACM Private CA recognizes that you are requesting
only one certificate and will issue only one. If you change the
idempotency token for each call, PCA recognizes that you are requesting
multiple certificates.



=head2 B<REQUIRED> SigningAlgorithm => Str

The name of the algorithm that will be used to sign the certificate to
be issued.

This parameter should not be confused with the C<SigningAlgorithm>
parameter used to sign a CSR in the C<CreateCertificateAuthority>
action.

Valid values are: C<"SHA256WITHECDSA">, C<"SHA384WITHECDSA">, C<"SHA512WITHECDSA">, C<"SHA256WITHRSA">, C<"SHA384WITHRSA">, C<"SHA512WITHRSA">

=head2 TemplateArn => Str

Specifies a custom configuration template to use when issuing a
certificate. If this parameter is not provided, ACM Private CA defaults
to the C<EndEntityCertificate/V1> template. For CA certificates, you
should choose the shortest path length that meets your needs. The path
length is indicated by the PathLenI<N> portion of the ARN, where I<N>
is the CA depth
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth).

Note: The CA depth configured on a subordinate CA certificate must not
exceed the limit set by its parents in the CA hierarchy.

For a list of C<TemplateArn> values supported by ACM Private CA, see
Understanding Certificate Templates
(https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html).



=head2 B<REQUIRED> Validity => L<Paws::ACMPCA::Validity>

Information describing the end of the validity period of the
certificate. This parameter sets the E<ldquo>Not AfterE<rdquo> date for
the certificate.

Certificate validity is the period of time during which a certificate
is valid. Validity can be expressed as an explicit date and time when
the certificate expires, or as a span of time after issuance, stated in
days, months, or years. For more information, see Validity
(https://tools.ietf.org/html/rfc5280#section-4.1.2.5) in RFC 5280.

This value is unaffected when C<ValidityNotBefore> is also specified.
For example, if C<Validity> is set to 20 days in the future, the
certificate will expire 20 days from issuance time regardless of the
C<ValidityNotBefore> value.

The end of the validity period configured on a certificate must not
exceed the limit set on its parents in the CA hierarchy.



=head2 ValidityNotBefore => L<Paws::ACMPCA::Validity>

Information describing the start of the validity period of the
certificate. This parameter sets the E<ldquo>Not Before" date for the
certificate.

By default, when issuing a certificate, ACM Private CA sets the "Not
Before" date to the issuance time minus 60 minutes. This compensates
for clock inconsistencies across computer systems. The
C<ValidityNotBefore> parameter can be used to customize the E<ldquo>Not
BeforeE<rdquo> value.

Unlike the C<Validity> parameter, the C<ValidityNotBefore> parameter is
optional.

The C<ValidityNotBefore> value is expressed as an explicit date and
time, using the C<Validity> type value C<ABSOLUTE>. For more
information, see Validity
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html)
in this API reference and Validity
(https://tools.ietf.org/html/rfc5280#section-4.1.2.5) in RFC 5280.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IssueCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

