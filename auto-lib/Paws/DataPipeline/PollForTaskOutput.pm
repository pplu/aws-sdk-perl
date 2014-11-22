
package Paws::DataPipeline::PollForTaskOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has taskObject => (is => 'ro', isa => 'Paws::DataPipeline::TaskObject');

}
1;