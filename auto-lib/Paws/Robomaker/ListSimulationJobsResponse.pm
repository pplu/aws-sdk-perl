
package Paws::Robomaker::ListSimulationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SimulationJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJobSummary]', traits => ['NameInRequest'], request_name => 'simulationJobSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListSimulationJobs>
request. When the results of a C<ListRobot> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 B<REQUIRED> SimulationJobSummaries => ArrayRef[L<Paws::Robomaker::SimulationJobSummary>]

A list of simulation job summaries that meet the criteria of the
request.


=head2 _request_id => Str


=cut

