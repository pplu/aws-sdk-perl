
package Aws::DataPipeline::PollForTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has taskObject => (is => 'ro', isa => 'Aws::DataPipeline::TaskObject');

}
1;
