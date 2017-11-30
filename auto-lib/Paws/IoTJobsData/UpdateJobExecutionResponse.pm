
package Paws::IoTJobsData::UpdateJobExecutionResponse;
  use Moose;
  has ExecutionState => (is => 'ro', isa => 'Paws::IoTJobsData::JobExecutionState', traits => ['NameInRequest'], request_name => 'executionState');
  has JobDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDocument');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::UpdateJobExecutionResponse

=head1 ATTRIBUTES


=head2 ExecutionState => L<Paws::IoTJobsData::JobExecutionState>

A JobExecutionState object.


=head2 JobDocument => Str

The contents of the Job Documents.


=head2 _request_id => Str


=cut

