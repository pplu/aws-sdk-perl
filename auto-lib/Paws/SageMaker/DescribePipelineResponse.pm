
package Paws::SageMaker::DescribePipelineResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LastRunTime => (is => 'ro', isa => 'Str');
  has PipelineArn => (is => 'ro', isa => 'Str');
  has PipelineDefinition => (is => 'ro', isa => 'Str');
  has PipelineDescription => (is => 'ro', isa => 'Str');
  has PipelineDisplayName => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str');
  has PipelineStatus => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePipelineResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

The time when the pipeline was created.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The time when the pipeline was last modified.


=head2 LastRunTime => Str

The time when the pipeline was last run.


=head2 PipelineArn => Str

The Amazon Resource Name (ARN) of the pipeline.


=head2 PipelineDefinition => Str

The JSON pipeline definition.


=head2 PipelineDescription => Str

The description of the pipeline.


=head2 PipelineDisplayName => Str

The display name of the pipeline.


=head2 PipelineName => Str

The name of the pipeline.


=head2 PipelineStatus => Str

The status of the pipeline execution.

Valid values are: C<"Active">
=head2 RoleArn => Str

The Amazon Resource Name (ARN) that the pipeline uses to execute.


=head2 _request_id => Str


=cut

1;