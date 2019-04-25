
package Paws::ACMPCA::RevokeCertificate;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has CertificateSerial => (is => 'ro', isa => 'Str', required => 1);
  has RevocationReason => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::RevokeCertificate - Arguments for method RevokeCertificate on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeCertificate on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method RevokeCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeCertificate.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->RevokeCertificate(
      CertificateAuthorityArn => 'MyArn',
      CertificateSerial       => 'MyString128',
      RevocationReason        => 'UNSPECIFIED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/RevokeCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

Amazon Resource Name (ARN) of the private CA that issued the
certificate to be revoked. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> CertificateSerial => Str

Serial number of the certificate to be revoked. This must be in
hexadecimal format. You can retrieve the serial number by calling
GetCertificate with the Amazon Resource Name (ARN) of the certificate
you want and the ARN of your private CA. The B<GetCertificate>
operation retrieves the certificate in the PEM format. You can use the
following OpenSSL command to list the certificate in text format and
copy the hexadecimal serial number.

C<openssl x509 -in I<file_path> -text -noout>

You can also copy the serial number from the console or use the
DescribeCertificate
(https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html)
operation in the I<AWS Certificate Manager API Reference>.



=head2 B<REQUIRED> RevocationReason => Str

Specifies why you revoked the certificate.

Valid values are: C<"UNSPECIFIED">, C<"KEY_COMPROMISE">, C<"CERTIFICATE_AUTHORITY_COMPROMISE">, C<"AFFILIATION_CHANGED">, C<"SUPERSEDED">, C<"CESSATION_OF_OPERATION">, C<"PRIVILEGE_WITHDRAWN">, C<"A_A_COMPROMISE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

