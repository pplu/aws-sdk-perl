
package Paws::IoT::CreateKeysAndCertificateResponse;
  use Moose;
  has certificateArn => (is => 'ro', isa => 'Str');
  has certificateId => (is => 'ro', isa => 'Str');
  has certificatePem => (is => 'ro', isa => 'Str');
  has keyPair => (is => 'ro', isa => 'Paws::IoT::KeyPair');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateKeysAndCertificateResponse

=head1 ATTRIBUTES

=head2 certificateArn => Str

  The ARN of the certificate.
=head2 certificateId => Str

  The ID of the certificate. AWS IoT issues a default subject name for
the certificate (e.g., AWS IoT Certificate).
=head2 certificatePem => Str

  The certificate data, in PEM format.
=head2 keyPair => L<Paws::IoT::KeyPair>

  The generated key pair.


=cut

