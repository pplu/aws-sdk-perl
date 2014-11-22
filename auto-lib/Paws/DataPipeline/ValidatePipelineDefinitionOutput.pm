
package Paws::DataPipeline::ValidatePipelineDefinitionOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationWarning]');

}
1;