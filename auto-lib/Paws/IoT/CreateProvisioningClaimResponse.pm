
package Paws::IoT::CreateProvisioningClaimResponse;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateId');
  has CertificatePem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePem');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiration');
  has KeyPair => (is => 'ro', isa => 'Paws::IoT::KeyPair', traits => ['NameInRequest'], request_name => 'keyPair');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningClaimResponse

=head1 ATTRIBUTES


=head2 CertificateId => Str

The ID of the certificate.


=head2 CertificatePem => Str

The provisioning claim certificate.


=head2 Expiration => Str

The provisioning claim expiration time.


=head2 KeyPair => L<Paws::IoT::KeyPair>

The provisioning claim key pair.


=head2 _request_id => Str


=cut

