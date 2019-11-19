
package Paws::IoTJobsData::UpdateJobExecutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_JobExecutionState/;
  has ExecutionState => (is => 'ro', isa => IoTJobsData_JobExecutionState);
  has JobDocument => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobDocument' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExecutionState' => {
                                     'type' => 'IoTJobsData_JobExecutionState',
                                     'class' => 'Paws::IoTJobsData::JobExecutionState'
                                   }
             },
  'NameInRequest' => {
                       'JobDocument' => 'jobDocument',
                       'ExecutionState' => 'executionState'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::UpdateJobExecutionResponse

=head1 ATTRIBUTES


=head2 ExecutionState => IoTJobsData_JobExecutionState

A JobExecutionState object.


=head2 JobDocument => Str

The contents of the Job Documents.


=head2 _request_id => Str


=cut

