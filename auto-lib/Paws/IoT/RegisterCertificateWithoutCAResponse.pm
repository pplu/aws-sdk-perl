
package Paws::IoT::RegisterCertificateWithoutCAResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCertificateWithoutCAResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the registered certificate.


=head2 CertificateId => Str

The ID of the registered certificate. (The last part of the certificate
ARN contains the certificate ID.


=head2 _request_id => Str


=cut

