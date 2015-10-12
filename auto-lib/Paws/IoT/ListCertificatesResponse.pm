
package Paws::IoT::ListCertificatesResponse;
  use Moose;
  has certificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Certificate]');
  has nextMarker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificatesResponse

=head1 ATTRIBUTES

=head2 certificates => ArrayRef[Paws::IoT::Certificate]

  The descriptions of the certificates.
=head2 nextMarker => Str

  The marker for the next set of results, or null if there are no
additional results.


=cut

