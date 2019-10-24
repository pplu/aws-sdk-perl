
package Paws::IoTJobsData::GetPendingJobExecutionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_JobExecutionSummary/;
  has InProgressJobs => (is => 'ro', isa => ArrayRef[IoTJobsData_JobExecutionSummary]);
  has QueuedJobs => (is => 'ro', isa => ArrayRef[IoTJobsData_JobExecutionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueuedJobs' => {
                                 'class' => 'Paws::IoTJobsData::JobExecutionSummary',
                                 'type' => 'ArrayRef[IoTJobsData_JobExecutionSummary]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InProgressJobs' => {
                                     'class' => 'Paws::IoTJobsData::JobExecutionSummary',
                                     'type' => 'ArrayRef[IoTJobsData_JobExecutionSummary]'
                                   }
             },
  'NameInRequest' => {
                       'QueuedJobs' => 'queuedJobs',
                       'InProgressJobs' => 'inProgressJobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::GetPendingJobExecutionsResponse

=head1 ATTRIBUTES


=head2 InProgressJobs => ArrayRef[IoTJobsData_JobExecutionSummary]

A list of JobExecutionSummary objects with status IN_PROGRESS.


=head2 QueuedJobs => ArrayRef[IoTJobsData_JobExecutionSummary]

A list of JobExecutionSummary objects with status QUEUED.


=head2 _request_id => Str


=cut

