
package Paws::ACM::ExportCertificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has Passphrase => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::ExportCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ExportCertificate - Arguments for method ExportCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportCertificate on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method ExportCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportCertificate.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    my $ExportCertificateResponse = $acm->ExportCertificate(
      CertificateArn => 'MyArn',
      Passphrase     => 'BlobPassphraseBlob',

    );

    # Results:
    my $Certificate      = $ExportCertificateResponse->Certificate;
    my $CertificateChain = $ExportCertificateResponse->CertificateChain;
    my $PrivateKey       = $ExportCertificateResponse->PrivateKey;

    # Returns a L<Paws::ACM::ExportCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/ExportCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

An Amazon Resource Name (ARN) of the issued certificate. This must be
of the form:

C<arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012>



=head2 B<REQUIRED> Passphrase => Str

Passphrase to associate with the encrypted exported private key. If you
want to later decrypt the private key, you must have the passphrase.
You can use the following OpenSSL command to decrypt a private key:

C<openssl rsa -in encrypted_key.pem -out decrypted_key.pem>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

