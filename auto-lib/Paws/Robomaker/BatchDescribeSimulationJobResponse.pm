
package Paws::Robomaker::BatchDescribeSimulationJobResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJob]', traits => ['NameInRequest'], request_name => 'jobs');
  has UnprocessedJobs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'unprocessedJobs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchDescribeSimulationJobResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Robomaker::SimulationJob>]

A list of simulation jobs.


=head2 UnprocessedJobs => ArrayRef[Str|Undef]

A list of unprocessed simulation job Amazon Resource Names (ARNs).


=head2 _request_id => Str


=cut

