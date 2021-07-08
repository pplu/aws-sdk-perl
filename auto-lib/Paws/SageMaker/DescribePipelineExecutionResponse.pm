
package Paws::SageMaker::DescribePipelineExecutionResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has PipelineArn => (is => 'ro', isa => 'Str');
  has PipelineExecutionArn => (is => 'ro', isa => 'Str');
  has PipelineExecutionDescription => (is => 'ro', isa => 'Str');
  has PipelineExecutionDisplayName => (is => 'ro', isa => 'Str');
  has PipelineExecutionStatus => (is => 'ro', isa => 'Str');
  has PipelineExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::PipelineExperimentConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePipelineExecutionResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

The time when the pipeline execution was created.


=head2 FailureReason => Str

If the execution failed, a message describing why.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The time when the pipeline execution was modified last.


=head2 PipelineArn => Str

The Amazon Resource Name (ARN) of the pipeline.


=head2 PipelineExecutionArn => Str

The Amazon Resource Name (ARN) of the pipeline execution.


=head2 PipelineExecutionDescription => Str

The description of the pipeline execution.


=head2 PipelineExecutionDisplayName => Str

The display name of the pipeline execution.


=head2 PipelineExecutionStatus => Str

The status of the pipeline execution.

Valid values are: C<"Executing">, C<"Stopping">, C<"Stopped">, C<"Failed">, C<"Succeeded">
=head2 PipelineExperimentConfig => L<Paws::SageMaker::PipelineExperimentConfig>




=head2 _request_id => Str


=cut

1;