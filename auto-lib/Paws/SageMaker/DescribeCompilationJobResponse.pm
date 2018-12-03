
package Paws::SageMaker::DescribeCompilationJobResponse;
  use Moose;
  has CompilationEndTime => (is => 'ro', isa => 'Str');
  has CompilationJobArn => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has CompilationStartTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::InputConfig', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelArtifacts', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCompilationJobResponse

=head1 ATTRIBUTES


=head2 CompilationEndTime => Str

The time when the model compilation job on a compilation job instance
ended. For a successful or stopped job, this is when the job's model
artifacts have finished uploading. For a failed job, this is when
Amazon SageMaker detected that the job failed.


=head2 B<REQUIRED> CompilationJobArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
assumes to perform the model compilation job.


=head2 B<REQUIRED> CompilationJobName => Str

The name of the model compilation job.


=head2 B<REQUIRED> CompilationJobStatus => Str

The status of the model compilation job.

Valid values are: C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">
=head2 CompilationStartTime => Str

The time when the model compilation job started the C<CompilationJob>
instances.

You are billed for the time between this timestamp and the timestamp in
the DescribeCompilationJobResponse$CompilationEndTime field. In Amazon
CloudWatch Logs, the start time might be later than this time. That's
because it takes time to download the compilation job, which depends on
the size of the compilation job container.


=head2 B<REQUIRED> CreationTime => Str

The time that the model compilation job was created.


=head2 B<REQUIRED> FailureReason => Str

If a model compilation job failed, the reason it failed.


=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::InputConfig>

Information about the location in Amazon S3 of the input model
artifacts, the name and shape of the expected data inputs, and the
framework in which the model was trained.


=head2 B<REQUIRED> LastModifiedTime => Str

The time that the status of the model compilation job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => L<Paws::SageMaker::ModelArtifacts>

Information about the location in Amazon S3 that has been configured
for storing the model artifacts used in the compilation job.


=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OutputConfig>

Information about the output location for the compiled model and the
target device that the model runs on.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the model compilation job.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

The duration allowed for model compilation.


=head2 _request_id => Str


=cut

1;