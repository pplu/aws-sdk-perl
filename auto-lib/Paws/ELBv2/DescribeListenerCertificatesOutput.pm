
package Paws::ELBv2::DescribeListenerCertificatesOutput;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeListenerCertificatesOutput

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

Information about the certificates.


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 _request_id => Str


=cut

