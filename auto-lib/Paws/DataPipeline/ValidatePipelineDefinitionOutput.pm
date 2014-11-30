
package Paws::DataPipeline::ValidatePipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationWarning]');

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidatePipelineDefinitionOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> errored => Bool

  

If C<True>, there were validation errors.









=head2 validationErrors => ArrayRef[Paws::DataPipeline::ValidationError]

  

Lists the validation errors that were found by
ValidatePipelineDefinition.









=head2 validationWarnings => ArrayRef[Paws::DataPipeline::ValidationWarning]

  

Lists the validation warnings that were found by
ValidatePipelineDefinition.











=cut

1;