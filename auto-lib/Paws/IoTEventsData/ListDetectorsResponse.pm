
package Paws::IoTEventsData::ListDetectorsResponse;
  use Moose;
  has DetectorSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::DetectorSummary]', traits => ['NameInRequest'], request_name => 'detectorSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::ListDetectorsResponse

=head1 ATTRIBUTES


=head2 DetectorSummaries => ArrayRef[L<Paws::IoTEventsData::DetectorSummary>]

A list of summary information about the detectors (instances).


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

