
package Paws::IoT::TransferCertificateResponse;
  use Moose;
  has TransferredCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transferredCertificateArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TransferCertificateResponse

=head1 ATTRIBUTES


=head2 TransferredCertificateArn => Str

The ARN of the certificate.


=head2 _request_id => Str


=cut

