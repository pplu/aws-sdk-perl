
package Paws::IoT::ListJobExecutionsForJobResponse;
  use Moose;
  has ExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::JobExecutionSummaryForJob]', traits => ['NameInRequest'], request_name => 'executionSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobExecutionsForJobResponse

=head1 ATTRIBUTES


=head2 ExecutionSummaries => ArrayRef[L<Paws::IoT::JobExecutionSummaryForJob>]

A list of job execution summaries.


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 _request_id => Str


=cut

