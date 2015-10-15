
package Paws::IoT::TransferCertificateResponse;
  use Moose;
  has TransferredCertificateArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TransferCertificateResponse

=head1 ATTRIBUTES

=head2 TransferredCertificateArn => Str

  The ARN of the certificate.


=cut

