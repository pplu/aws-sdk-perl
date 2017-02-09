
package Paws::CodePipeline::GetJobDetailsOutput;
  use Moose;
  has JobDetails => (is => 'ro', isa => 'Paws::CodePipeline::JobDetails', traits => ['NameInRequest'], request_name => 'jobDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetJobDetailsOutput

=head1 ATTRIBUTES


=head2 JobDetails => L<Paws::CodePipeline::JobDetails>

The details of the job.

If AWSSessionCredentials is used, a long-running job can call
GetJobDetails again to obtain new credentials.


=head2 _request_id => Str


=cut

1;