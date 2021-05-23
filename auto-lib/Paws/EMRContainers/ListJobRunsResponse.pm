
package Paws::EMRContainers::ListJobRunsResponse;
  use Moose;
  has JobRuns => (is => 'ro', isa => 'ArrayRef[Paws::EMRContainers::JobRun]', traits => ['NameInRequest'], request_name => 'jobRuns');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListJobRunsResponse

=head1 ATTRIBUTES


=head2 JobRuns => ArrayRef[L<Paws::EMRContainers::JobRun>]

This output lists information about the specified job runs.


=head2 NextToken => Str

This output displays the token for the next set of job runs.


=head2 _request_id => Str


=cut

