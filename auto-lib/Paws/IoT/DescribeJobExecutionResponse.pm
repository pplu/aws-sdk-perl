
package Paws::IoT::DescribeJobExecutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_JobExecution/;
  has Execution => (is => 'ro', isa => IoT_JobExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Execution' => {
                                'type' => 'IoT_JobExecution',
                                'class' => 'Paws::IoT::JobExecution'
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

Paws::IoT::DescribeJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => IoT_JobExecution

Information about the job execution.


=head2 _request_id => Str


=cut

