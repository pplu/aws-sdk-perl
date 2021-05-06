
package Paws::IoTJobsData::GetPendingJobExecutionsResponse;
  use Moose;
  has InProgressJobs => (is => 'ro', isa => 'ArrayRef[Paws::IoTJobsData::JobExecutionSummary]', traits => ['NameInRequest'], request_name => 'inProgressJobs');
  has QueuedJobs => (is => 'ro', isa => 'ArrayRef[Paws::IoTJobsData::JobExecutionSummary]', traits => ['NameInRequest'], request_name => 'queuedJobs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::GetPendingJobExecutionsResponse

=head1 ATTRIBUTES


=head2 InProgressJobs => ArrayRef[L<Paws::IoTJobsData::JobExecutionSummary>]

A list of JobExecutionSummary objects with status IN_PROGRESS.


=head2 QueuedJobs => ArrayRef[L<Paws::IoTJobsData::JobExecutionSummary>]

A list of JobExecutionSummary objects with status QUEUED.


=head2 _request_id => Str


=cut

