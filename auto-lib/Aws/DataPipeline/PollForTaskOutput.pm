
package Aws::DataPipeline::PollForTaskOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has taskObject => (is => 'ro', isa => 'Aws::DataPipeline::TaskObject');

}
1;