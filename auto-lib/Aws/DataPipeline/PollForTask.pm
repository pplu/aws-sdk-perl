
package Aws::DataPipeline::PollForTask {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has instanceIdentity => (is => 'ro', isa => 'Aws::DataPipeline::InstanceIdentity');
  has workerGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::PollForTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;