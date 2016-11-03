
package Paws::CodePipeline::PollForThirdPartyJobsOutput;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ThirdPartyJob]', traits => ['NameInRequest'], request_name => 'jobs' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PollForThirdPartyJobsOutput

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::CodePipeline::ThirdPartyJob>]

Information about the jobs to take action on.




=cut

1;