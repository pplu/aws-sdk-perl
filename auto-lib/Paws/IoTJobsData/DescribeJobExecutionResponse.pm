
package Paws::IoTJobsData::DescribeJobExecutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_JobExecution/;
  has Execution => (is => 'ro', isa => IoTJobsData_JobExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Execution' => 'execution'
                     },
  'types' => {
               'Execution' => {
                                'class' => 'Paws::IoTJobsData::JobExecution',
                                'type' => 'IoTJobsData_JobExecution'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::DescribeJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => IoTJobsData_JobExecution

Contains data about a job execution.


=head2 _request_id => Str


=cut

