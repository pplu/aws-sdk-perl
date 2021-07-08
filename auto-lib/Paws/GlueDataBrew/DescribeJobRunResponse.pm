
package Paws::GlueDataBrew::DescribeJobRunResponse;
  use Moose;
  has Attempt => (is => 'ro', isa => 'Int');
  has CompletedOn => (is => 'ro', isa => 'Str');
  has DataCatalogOutputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::DataCatalogOutput]');
  has DatasetName => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobSample => (is => 'ro', isa => 'Paws::GlueDataBrew::JobSample');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has LogSubscription => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Output]');
  has RecipeReference => (is => 'ro', isa => 'Paws::GlueDataBrew::RecipeReference');
  has RunId => (is => 'ro', isa => 'Str');
  has StartedBy => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeJobRunResponse

=head1 ATTRIBUTES


=head2 Attempt => Int

The number of times that DataBrew has attempted to run the job.


=head2 CompletedOn => Str

The date and time when the job completed processing.


=head2 DataCatalogOutputs => ArrayRef[L<Paws::GlueDataBrew::DataCatalogOutput>]

One or more artifacts that represent the AWS Glue Data Catalog output
from running the job.


=head2 DatasetName => Str

The name of the dataset for the job to process.


=head2 ErrorMessage => Str

A message indicating an error (if any) that was encountered when the
job ran.


=head2 ExecutionTime => Int

The amount of time, in seconds, during which the job run consumed
resources.


=head2 B<REQUIRED> JobName => Str

The name of the job being processed during this run.


=head2 JobSample => L<Paws::GlueDataBrew::JobSample>

Sample configuration for profile jobs only. Determines the number of
rows on which the profile job will be executed. If a JobSample value is
not provided, the default value will be used. The default value is
CUSTOM_ROWS for the mode parameter and 20000 for the size parameter.


=head2 LogGroupName => Str

The name of an Amazon CloudWatch log group, where the job writes
diagnostic messages when it runs.


=head2 LogSubscription => Str

The current status of Amazon CloudWatch logging for the job run.

Valid values are: C<"ENABLE">, C<"DISABLE">
=head2 Outputs => ArrayRef[L<Paws::GlueDataBrew::Output>]

One or more output artifacts from a job run.


=head2 RecipeReference => L<Paws::GlueDataBrew::RecipeReference>




=head2 RunId => Str

The unique identifier of the job run.


=head2 StartedBy => Str

The Amazon Resource Name (ARN) of the user who started the job run.


=head2 StartedOn => Str

The date and time when the job run began.


=head2 State => Str

The current state of the job run entity itself.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMEOUT">
=head2 _request_id => Str


=cut

