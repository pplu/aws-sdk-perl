
package Paws::CodePipeline::GetPipelineStateOutput;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'created' );
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'pipelineName' );
  has PipelineVersion => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'pipelineVersion' );
  has StageStates => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::StageState]', traits => ['Unwrapped'], xmlname => 'stageStates' );
  has Updated => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updated' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineStateOutput

=head1 ATTRIBUTES


=head2 Created => Str

The date and time the pipeline was created, in timestamp format.



=head2 PipelineName => Str

The name of the pipeline for which you want to get the state.



=head2 PipelineVersion => Int

The version number of the pipeline.

A newly-created pipeline is always assigned a version number of C<1>.



=head2 StageStates => ArrayRef[L<Paws::CodePipeline::StageState>]

A list of the pipeline stage output information, including stage name,
state, most recent run details, whether the stage is disabled, and
other data.



=head2 Updated => Str

The date and time the pipeline was last updated, in timestamp format.




=cut

1;