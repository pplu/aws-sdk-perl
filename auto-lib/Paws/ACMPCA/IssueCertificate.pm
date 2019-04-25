
package Paws::ACMPCA::IssueCertificate;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has Csr => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has Validity => (is => 'ro', isa => 'Paws::ACMPCA::Validity', required => 1);

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
      IdempotencyToken => 'MyIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $IssueCertificateResponse->CertificateArn;

    # Returns a L<Paws::ACMPCA::IssueCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/IssueCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> Csr => Str

The certificate signing request (CSR) for the certificate you want to
issue. You can use the following OpenSSL command to create the CSR and
a 2048 bit RSA private key.

C<openssl req -new -newkey rsa:2048 -days 365 -keyout
private/test_cert_priv_key.pem -out csr/test_cert_.csr>

If you have a configuration file, you can use the following OpenSSL
command. The C<usr_cert> block in the configuration file contains your
X509 version 3 extensions.

C<openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey
rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out
csr/test_cert_.csr>



=head2 IdempotencyToken => Str

Custom string that can be used to distinguish between calls to the
B<IssueCertificate> operation. Idempotency tokens time out after one
hour. Therefore, if you call B<IssueCertificate> multiple times with
the same idempotency token within 5 minutes, ACM PCA recognizes that
you are requesting only one certificate and will issue only one. If you
change the idempotency token for each call, PCA recognizes that you are
requesting multiple certificates.



=head2 B<REQUIRED> SigningAlgorithm => Str

The name of the algorithm that will be used to sign the certificate to
be issued.

Valid values are: C<"SHA256WITHECDSA">, C<"SHA384WITHECDSA">, C<"SHA512WITHECDSA">, C<"SHA256WITHRSA">, C<"SHA384WITHRSA">, C<"SHA512WITHRSA">

=head2 B<REQUIRED> Validity => L<Paws::ACMPCA::Validity>

The type of the validity period.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IssueCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

