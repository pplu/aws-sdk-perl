
package Paws::SageMaker::DescribeEdgePackagingJobResponse;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has EdgePackagingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has EdgePackagingJobName => (is => 'ro', isa => 'Str', required => 1);
  has EdgePackagingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has EdgePackagingJobStatusMessage => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelArtifact => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelSignature => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::EdgeOutputConfig');
  has PresetDeploymentOutput => (is => 'ro', isa => 'Paws::SageMaker::EdgePresetDeploymentOutput');
  has ResourceKey => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEdgePackagingJobResponse

=head1 ATTRIBUTES


=head2 CompilationJobName => Str

The name of the SageMaker Neo compilation job that is used to locate
model artifacts that are being packaged.


=head2 CreationTime => Str

The timestamp of when the packaging job was created.


=head2 B<REQUIRED> EdgePackagingJobArn => Str

The Amazon Resource Name (ARN) of the edge packaging job.


=head2 B<REQUIRED> EdgePackagingJobName => Str

The name of the edge packaging job.


=head2 B<REQUIRED> EdgePackagingJobStatus => Str

The current status of the packaging job.

Valid values are: C<"STARTING">, C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">
=head2 EdgePackagingJobStatusMessage => Str

Returns a message describing the job status and error messages.


=head2 LastModifiedTime => Str

The timestamp of when the job was last updated.


=head2 ModelArtifact => Str

The Amazon Simple Storage (S3) URI where model artifacts ares stored.


=head2 ModelName => Str

The name of the model.


=head2 ModelSignature => Str

The signature document of files in the model artifact.


=head2 ModelVersion => Str

The version of the model.


=head2 OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

The output configuration for the edge packaging job.


=head2 PresetDeploymentOutput => L<Paws::SageMaker::EdgePresetDeploymentOutput>

The output of a SageMaker Edge Manager deployable resource.


=head2 ResourceKey => Str

The CMK to use when encrypting the EBS volume the job run on.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker to download and upload the model, and to contact Neo.


=head2 _request_id => Str


=cut

1;