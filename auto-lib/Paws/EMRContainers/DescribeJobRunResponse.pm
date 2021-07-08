
package Paws::EMRContainers::DescribeJobRunResponse;
  use Moose;
  has JobRun => (is => 'ro', isa => 'Paws::EMRContainers::JobRun', traits => ['NameInRequest'], request_name => 'jobRun');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeJobRunResponse

=head1 ATTRIBUTES


=head2 JobRun => L<Paws::EMRContainers::JobRun>

The output displays information about a job run.


=head2 _request_id => Str


=cut

