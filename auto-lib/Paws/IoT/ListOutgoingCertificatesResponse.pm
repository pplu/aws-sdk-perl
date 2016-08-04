
package Paws::IoT::ListOutgoingCertificatesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has OutgoingCertificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::OutgoingCertificate]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOutgoingCertificatesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results.



=head2 OutgoingCertificates => ArrayRef[L<Paws::IoT::OutgoingCertificate>]

The certificates that are being transfered but not yet accepted.




=cut

