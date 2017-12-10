
package Paws::IoTJobsData::DescribeJobExecutionResponse;
  use Moose;
  has Execution => (is => 'ro', isa => 'Paws::IoTJobsData::JobExecution', traits => ['NameInRequest'], request_name => 'execution');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::DescribeJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => L<Paws::IoTJobsData::JobExecution>

Contains data about a job execution.


=head2 _request_id => Str


=cut

