
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
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLOutputDataConfig', required => 1);
  has ProblemType => (is => 'ro', isa => 'Str');
  has ResolvedAttributes => (is => 'ro', isa => 'Paws::SageMaker::ResolvedAttributes');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAutoMLJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobArn => Str

Returns the job's ARN.


=head2 AutoMLJobArtifacts => L<Paws::SageMaker::AutoMLJobArtifacts>

Returns information on the job's artifacts found in AutoMLJobArtifacts.


=head2 AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>

Returns the job's config.


=head2 B<REQUIRED> AutoMLJobName => Str

Returns the name of a job.


=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>

Returns the job's objective.


=head2 B<REQUIRED> AutoMLJobSecondaryStatus => Str

Returns the job's AutoMLJobSecondaryStatus.

Valid values are: C<"Starting">, C<"AnalyzingData">, C<"FeatureEngineering">, C<"ModelTuning">, C<"MaxCandidatesReached">, C<"Failed">, C<"Stopped">, C<"MaxAutoMLJobRuntimeReached">, C<"Stopping">, C<"CandidateDefinitionsGenerated">
=head2 B<REQUIRED> AutoMLJobStatus => Str

Returns the job's AutoMLJobStatus.

Valid values are: C<"Completed">, C<"InProgress">, C<"Failed">, C<"Stopped">, C<"Stopping">
=head2 BestCandidate => L<Paws::SageMaker::AutoMLCandidate>

Returns the job's BestCandidate.


=head2 B<REQUIRED> CreationTime => Str

Returns the job's creation time.


=head2 EndTime => Str

Returns the job's end time.


=head2 FailureReason => Str

Returns the job's FailureReason.


=head2 GenerateCandidateDefinitionsOnly => Bool

Returns the job's output from GenerateCandidateDefinitionsOnly.


=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

Returns the job's input data config.


=head2 B<REQUIRED> LastModifiedTime => Str

Returns the job's last modified time.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

Returns the job's output data config.


=head2 ProblemType => Str

Returns the job's problem type.

Valid values are: C<"BinaryClassification">, C<"MulticlassClassification">, C<"Regression">
=head2 ResolvedAttributes => L<Paws::SageMaker::ResolvedAttributes>

This contains ProblemType, AutoMLJobObjective and CompletionCriteria.
TheyE<rsquo>re auto-inferred values, if not provided by you. If you do
provide them, then theyE<rsquo>ll be the same as provided.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that has read permission to the input data
location and write permission to the output data location in Amazon S3.


=head2 _request_id => Str


=cut

1;