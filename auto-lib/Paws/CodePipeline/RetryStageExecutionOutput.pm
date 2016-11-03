
package Paws::CodePipeline::RetryStageExecutionOutput;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RetryStageExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecutionId => Str

The ID of the current workflow execution in the failed stage.




=cut

1;