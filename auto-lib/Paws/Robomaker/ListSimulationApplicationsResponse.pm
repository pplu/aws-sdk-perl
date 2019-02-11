
package Paws::Robomaker::ListSimulationApplicationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SimulationApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationApplicationSummary]', traits => ['NameInRequest'], request_name => 'simulationApplicationSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListSimulationApplications> request. When the results of a
C<ListRobot> request exceed C<maxResults>, this value can be used to
retrieve the next page of results. This value is C<null> when there are
no more results to return.


=head2 SimulationApplicationSummaries => ArrayRef[L<Paws::Robomaker::SimulationApplicationSummary>]

A list of simulation application summaries that meet the criteria of
the request.


=head2 _request_id => Str


=cut

