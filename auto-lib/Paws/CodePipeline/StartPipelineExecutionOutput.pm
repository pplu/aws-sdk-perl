
package Paws::CodePipeline::StartPipelineExecutionOutput;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'pipelineExecutionId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StartPipelineExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecutionId => Str

  The unique system-generated ID of the pipeline that was started.


=cut

1;