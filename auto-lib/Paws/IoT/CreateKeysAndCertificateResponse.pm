
package Paws::IoT::CreateKeysAndCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateId => (is => 'ro', isa => 'Str');
  has CertificatePem => (is => 'ro', isa => 'Str');
  has KeyPair => (is => 'ro', isa => 'Paws::IoT::KeyPair');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateKeysAndCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The ARN of the certificate.



=head2 CertificateId => Str

The ID of the certificate. AWS IoT issues a default subject name for
the certificate (e.g., AWS IoT Certificate).



=head2 CertificatePem => Str

The certificate data, in PEM format.



=head2 KeyPair => L<Paws::IoT::KeyPair>

The generated key pair.




=cut

