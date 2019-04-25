
package Paws::SageMaker::DescribeTransformJobResponse;
  use Moose;
  has BatchStrategy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TransformEnvironmentMap');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LabelingJobArn => (is => 'ro', isa => 'Str');
  has MaxConcurrentTransforms => (is => 'ro', isa => 'Int');
  has MaxPayloadInMB => (is => 'ro', isa => 'Int');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has TransformEndTime => (is => 'ro', isa => 'Str');
  has TransformInput => (is => 'ro', isa => 'Paws::SageMaker::TransformInput', required => 1);
  has TransformJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);
  has TransformJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has TransformOutput => (is => 'ro', isa => 'Paws::SageMaker::TransformOutput');
  has TransformResources => (is => 'ro', isa => 'Paws::SageMaker::TransformResources', required => 1);
  has TransformStartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTransformJobResponse

=head1 ATTRIBUTES


=head2 BatchStrategy => Str

If you want to include only one record in a batch, specify
C<SingleRecord>.. If you want batches to contain a maximum of the
number of records specified in the C<MaxPayloadInMB> parameter, specify
C<MultiRecord>.S

Valid values are: C<"MultiRecord">, C<"SingleRecord">
=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the transform Job was created.


=head2 Environment => L<Paws::SageMaker::TransformEnvironmentMap>




=head2 FailureReason => Str

If the transform job failed, the reason that it failed.


=head2 LabelingJobArn => Str

The Amazon Resource Name (ARN) of the Amazon SageMaker Ground Truth
labeling job that created the transform or training job.


=head2 MaxConcurrentTransforms => Int

The maximum number of parallel requests on each instance node that can
be launched in a transform job. The default value is 1.


=head2 MaxPayloadInMB => Int

The maximum payload size, in MB, used in the transform job.


=head2 B<REQUIRED> ModelName => Str

The name of the model used in the transform job.


=head2 TransformEndTime => Str

Indicates when the transform job has been completed, or has stopped or
failed. You are billed for the time interval between this time and the
value of C<TransformStartTime>.


=head2 B<REQUIRED> TransformInput => L<Paws::SageMaker::TransformInput>

Describes the dataset to be transformed and the Amazon S3 location
where it is stored.


=head2 B<REQUIRED> TransformJobArn => Str

The Amazon Resource Name (ARN) of the transform job.


=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job.


=head2 B<REQUIRED> TransformJobStatus => Str

The status of the transform job. If the transform job failed, the
reason is returned in the C<FailureReason> field.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TransformOutput => L<Paws::SageMaker::TransformOutput>

Identifies the Amazon S3 location where you want Amazon SageMaker to
save the results from the transform job.


=head2 B<REQUIRED> TransformResources => L<Paws::SageMaker::TransformResources>

Describes the resources, including ML instance types and ML instance
count, to use for the transform job.


=head2 TransformStartTime => Str

Indicates when the transform job starts on ML instances. You are billed
for the time interval between this time and the value of
C<TransformEndTime>.


=head2 _request_id => Str


=cut

1;