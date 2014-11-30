
package Paws::DataPipeline::PutPipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationWarning]');

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PutPipelineDefinitionOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> errored => Bool

  

If C<True>, there were validation errors. If errored is C<True>, the
pipeline definition is stored but cannot be activated until you correct
the pipeline and call PutPipelineDefinition to commit the corrected
pipeline.









=head2 validationErrors => ArrayRef[Paws::DataPipeline::ValidationError]

  

A list of the validation errors that are associated with the objects
defined in C<pipelineObjects>.









=head2 validationWarnings => ArrayRef[Paws::DataPipeline::ValidationWarning]

  

A list of the validation warnings that are associated with the objects
defined in C<pipelineObjects>.











=cut

1;