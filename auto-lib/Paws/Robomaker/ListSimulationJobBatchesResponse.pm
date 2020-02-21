
package Paws::Robomaker::ListSimulationJobBatchesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SimulationJobBatchSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJobBatchSummary]', traits => ['NameInRequest'], request_name => 'simulationJobBatchSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationJobBatchesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListSimulationJobBatches> request. When the results of a
C<ListSimulationJobBatches> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 SimulationJobBatchSummaries => ArrayRef[L<Paws::Robomaker::SimulationJobBatchSummary>]

A list of simulation job batch summaries.


=head2 _request_id => Str


=cut

