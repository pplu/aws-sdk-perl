
package Aws::DataPipeline::PutPipelineDefinitionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}
1;
