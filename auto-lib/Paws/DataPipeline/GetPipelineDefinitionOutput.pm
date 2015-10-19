
package Paws::DataPipeline::GetPipelineDefinitionOutput;
  use Moose;
  has ParameterObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterObject]', traits => ['Unwrapped'], xmlname => 'parameterObjects' );
  has ParameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]', traits => ['Unwrapped'], xmlname => 'parameterValues' );
  has PipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]', traits => ['Unwrapped'], xmlname => 'pipelineObjects' );


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::GetPipelineDefinitionOutput

=head1 ATTRIBUTES

=head2 ParameterObjects => ArrayRef[L<Paws::DataPipeline::ParameterObject>]

  The parameter objects used in the pipeline definition.
=head2 ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]

  The parameter values used in the pipeline definition.
=head2 PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

  The objects defined in the pipeline.


=cut

1;