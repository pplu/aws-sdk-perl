
package Paws::IoT::RegisterCACertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'certificateArn');
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'certificateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCACertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The CA certificate ARN.


=head2 CertificateId => Str

The CA certificate identifier.


=head2 _request_id => Str


=cut

