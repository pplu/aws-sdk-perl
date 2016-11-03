
package Paws::CodePipeline::StartPipelineExecutionOutput;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StartPipelineExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecutionId => Str

The unique system-generated ID of the pipeline execution that was
started.




=cut

1;