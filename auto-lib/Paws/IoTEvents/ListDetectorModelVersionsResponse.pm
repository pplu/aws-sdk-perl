
package Paws::IoTEvents::ListDetectorModelVersionsResponse;
  use Moose;
  has DetectorModelVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::DetectorModelVersionSummary]', traits => ['NameInRequest'], request_name => 'detectorModelVersionSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListDetectorModelVersionsResponse

=head1 ATTRIBUTES


=head2 DetectorModelVersionSummaries => ArrayRef[L<Paws::IoTEvents::DetectorModelVersionSummary>]

Summary information about the detector model versions.


=head2 NextToken => Str

A token to retrieve the next set of results, or C<null> if there are no
additional results.


=head2 _request_id => Str


=cut

