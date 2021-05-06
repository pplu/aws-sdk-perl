
package Paws::Personalize::ListEventTrackersResponse;
  use Moose;
  has EventTrackers => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::EventTrackerSummary]', traits => ['NameInRequest'], request_name => 'eventTrackers' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListEventTrackersResponse

=head1 ATTRIBUTES


=head2 EventTrackers => ArrayRef[L<Paws::Personalize::EventTrackerSummary>]

A list of event trackers.


=head2 NextToken => Str

A token for getting the next set of event trackers (if they exist).


=head2 _request_id => Str


=cut

1;