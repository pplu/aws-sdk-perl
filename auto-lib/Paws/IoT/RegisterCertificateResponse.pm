
package Paws::IoT::RegisterCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The certificate ARN.


=head2 CertificateId => Str

The certificate identifier.


=head2 _request_id => Str


=cut

