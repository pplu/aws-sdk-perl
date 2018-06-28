
package Paws::ACMPCA::ImportCertificateAuthorityCertificate;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportCertificateAuthorityCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ImportCertificateAuthorityCertificate - Arguments for method ImportCertificateAuthorityCertificate on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCertificateAuthorityCertificate on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method ImportCertificateAuthorityCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCertificateAuthorityCertificate.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->ImportCertificateAuthorityCertificate(
      Certificate             => 'BlobCertificateBodyBlob',
      CertificateAuthorityArn => 'MyArn',
      CertificateChain        => 'BlobCertificateChainBlob',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/ImportCertificateAuthorityCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => Str

The PEM-encoded certificate for your private CA. This must be signed by
using your on-premises CA.



=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> CertificateChain => Str

A PEM-encoded file that contains all of your certificates, other than
the certificate you're importing, chaining up to your root CA. Your
on-premises root certificate is the last in the chain, and each
certificate in the chain signs the one preceding.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCertificateAuthorityCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

