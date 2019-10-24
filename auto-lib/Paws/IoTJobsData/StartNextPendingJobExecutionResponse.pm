
package Paws::IoTJobsData::StartNextPendingJobExecutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_JobExecution/;
  has Execution => (is => 'ro', isa => IoTJobsData_JobExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Execution' => {
                                'class' => 'Paws::IoTJobsData::JobExecution',
                                'type' => 'IoTJobsData_JobExecution'
                              }
             },
  'NameInRequest' => {
                       'Execution' => 'execution'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::StartNextPendingJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => IoTJobsData_JobExecution

A JobExecution object.


=head2 _request_id => Str


=cut

