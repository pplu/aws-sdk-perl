
package Paws::ACM::ImportCertificate;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateChain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::ImportCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ImportCertificate - Arguments for method ImportCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCertificate on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method ImportCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCertificate.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    my $ImportCertificateResponse = $acm->ImportCertificate(
      Certificate      => 'BlobCertificateBodyBlob',
      PrivateKey       => 'BlobPrivateKeyBlob',
      CertificateArn   => 'MyArn',                       # OPTIONAL
      CertificateChain => 'BlobCertificateChainBlob',    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $ImportCertificateResponse->CertificateArn;

    # Returns a L<Paws::ACM::ImportCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/ImportCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => Str

The certificate to import.



=head2 CertificateArn => Str

The Amazon Resource Name (ARN)
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an imported certificate to replace. To import a new certificate,
omit this field.



=head2 CertificateChain => Str

The PEM encoded certificate chain.



=head2 B<REQUIRED> PrivateKey => Str

The private key that matches the public key in the certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

