
package Paws::CodePipeline::GetJobDetailsOutput;
  use Moose;
  has JobDetails => (is => 'ro', isa => 'Paws::CodePipeline::JobDetails', traits => ['Unwrapped'], xmlname => 'jobDetails' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetJobDetailsOutput

=head1 ATTRIBUTES


=head2 JobDetails => L<Paws::CodePipeline::JobDetails>

The details of the job.

If AWSSessionCredentials is used, a long-running job can call
GetJobDetails again to obtain new credentials.




=cut

1;