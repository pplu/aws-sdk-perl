
package Paws::SageMaker::DescribeAutoMLJobResponse;
  use Moose;
  has AutoMLJobArn => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobArtifacts => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobArtifacts');
  has AutoMLJobConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobConfig');
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has AutoMLJobSecondaryStatus => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has BestCandidate => (is => 'ro', isa => 'Paws::SageMaker::AutoMLCandidate');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has GenerateCandidateDefinitionsOnly => (is => 'ro', isa => 'Bool');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLChannel]', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelDeployConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployConfig');
  has ModelDeployResult => (is => 'ro', isa => 'Paws::SageMaker::ModelDeployResult');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has PartialFailureReasons => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLPartialFailureReason]');
  has ProblemType => (is => 'ro', isa => 'Str');
  has ResolvedAttributes => (is => 'ro', isa => 'Paws::SageMaker::ResolvedAttributes');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAutoMLJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobArn => Str

Returns the ARN of the AutoML job.


=head2 AutoMLJobArtifacts => L<Paws::SageMaker::AutoMLJobArtifacts>

Returns information on the job's artifacts found in
C<AutoMLJobArtifacts>.


=head2 AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>

Returns the configuration for the AutoML job.


=head2 B<REQUIRED> AutoMLJobName => Str

Returns the name of the AutoML job.


=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Returns the job's objective.


=head2 B<REQUIRED> AutoMLJobSecondaryStatus => Str

Returns the secondary status of the AutoML job.

Valid values are: C<"Starting">, C<"AnalyzingData">, C<"FeatureEngineering">, C<"ModelTuning">, C<"MaxCandidatesReached">, C<"Failed">, C<"Stopped">, C<"MaxAutoMLJobRuntimeReached">, C<"Stopping">, C<"CandidateDefinitionsGenerated">, C<"GeneratingExplainabilityReport">, C<"Completed">, C<"ExplainabilityError">, C<"DeployingModel">, C<"ModelDeploymentError">
=head2 B<REQUIRED> AutoMLJobStatus => Str

Returns the status of the AutoML job.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">
=head2 BestCandidate => L<Paws::SageMaker::AutoMLCandidate>

Returns the job's best C<AutoMLCandidate>.


=head2 B<REQUIRED> CreationTime => Str

Returns the creation time of the AutoML job.


=head2 EndTime => Str

Returns the end time of the AutoML job.


=head2 FailureReason => Str

Returns the failure reason for an AutoML job, when applicable.


=head2 GenerateCandidateDefinitionsOnly => Bool

Indicates whether the output for an AutoML job generates candidate
definitions only.


=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

Returns the input data configuration for the AutoML job..


=head2 B<REQUIRED> LastModifiedTime => Str

Returns the job's last modified time.


=head2 ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>

Indicates whether the model was deployed automatically to an endpoint
and the name of that endpoint if deployed automatically.


=head2 ModelDeployResult => L<Paws::SageMaker::ModelDeployResult>

Provides information about endpoint for the model deployment.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Returns the job's output data config.


=head2 PartialFailureReasons => ArrayRef[L<Paws::SageMaker::AutoMLPartialFailureReason>]

Returns a list of reasons for partial failures within an AutoML job.


=head2 ProblemType => Str

Returns the job's problem type.

Valid values are: C<"BinaryClassification">, C<"MulticlassClassification">, C<"Regression">
=head2 ResolvedAttributes => L<Paws::SageMaker::ResolvedAttributes>

This contains C<ProblemType>, C<AutoMLJobObjective> and
C<CompletionCriteria>. If you do not provide these values, they are
auto-inferred. If you do provide them, the values used are the ones you
provide.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
Access Management (IAM) role that has read permission to the input data
location and write permission to the output data location in Amazon S3.


=head2 _request_id => Str


=cut

1;