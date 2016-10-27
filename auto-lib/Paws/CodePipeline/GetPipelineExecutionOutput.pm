
package Paws::CodePipeline::GetPipelineExecutionOutput;
  use Moose;
  has PipelineExecution => (is => 'ro', isa => 'Paws::CodePipeline::PipelineExecution', traits => ['Unwrapped'], xmlname => 'pipelineExecution' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecution => L<Paws::CodePipeline::PipelineExecution>

Represents information about the execution of a pipeline.




=cut

1;