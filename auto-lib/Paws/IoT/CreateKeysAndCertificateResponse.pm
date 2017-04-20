
package Paws::IoT::CreateKeysAndCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateId');
  has CertificatePem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePem');
  has KeyPair => (is => 'ro', isa => 'Paws::IoT::KeyPair', traits => ['NameInRequest'], request_name => 'keyPair');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateKeysAndCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The ARN of the certificate.


=head2 CertificateId => Str

The ID of the certificate. AWS IoT issues a default subject name for
the certificate (for example, AWS IoT Certificate).


=head2 CertificatePem => Str

The certificate data, in PEM format.


=head2 KeyPair => L<Paws::IoT::KeyPair>

The generated key pair.


=head2 _request_id => Str


=cut

