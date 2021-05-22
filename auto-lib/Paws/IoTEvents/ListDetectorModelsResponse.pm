
package Paws::IoTEvents::ListDetectorModelsResponse;
  use Moose;
  has DetectorModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::DetectorModelSummary]', traits => ['NameInRequest'], request_name => 'detectorModelSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListDetectorModelsResponse

=head1 ATTRIBUTES


=head2 DetectorModelSummaries => ArrayRef[L<Paws::IoTEvents::DetectorModelSummary>]

Summary information about the detector models.


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

