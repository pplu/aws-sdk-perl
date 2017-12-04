
package Paws::IoTJobsData::StartNextPendingJobExecutionResponse;
  use Moose;
  has Execution => (is => 'ro', isa => 'Paws::IoTJobsData::JobExecution', traits => ['NameInRequest'], request_name => 'execution');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::StartNextPendingJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => L<Paws::IoTJobsData::JobExecution>

A JobExecution object.


=head2 _request_id => Str


=cut

