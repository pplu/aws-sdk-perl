
package Paws::CodePipeline::PollForJobsOutput;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Job]', traits => ['Unwrapped'], xmlname => 'jobs' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PollForJobsOutput

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::CodePipeline::Job>]

Information about the jobs to take action on.




=cut

1;