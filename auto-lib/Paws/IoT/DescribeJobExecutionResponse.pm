
package Paws::IoT::DescribeJobExecutionResponse;
  use Moose;
  has Execution => (is => 'ro', isa => 'Paws::IoT::JobExecution', traits => ['NameInRequest'], request_name => 'execution');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobExecutionResponse

=head1 ATTRIBUTES


=head2 Execution => L<Paws::IoT::JobExecution>

Information about the job execution.


=head2 _request_id => Str


=cut

