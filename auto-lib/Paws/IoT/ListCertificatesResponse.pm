
package Paws::IoT::ListCertificatesResponse;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Certificate]', traits => ['NameInRequest'], request_name => 'certificates');
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificatesResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::IoT::Certificate>]

The descriptions of the certificates.


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

