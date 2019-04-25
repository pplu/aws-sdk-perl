
package Paws::WorkLink::ListFleetsResponse;
  use Moose;
  has FleetSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::WorkLink::FleetSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListFleetsResponse

=head1 ATTRIBUTES


=head2 FleetSummaryList => ArrayRef[L<Paws::WorkLink::FleetSummary>]

The summary list of the fleets.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

