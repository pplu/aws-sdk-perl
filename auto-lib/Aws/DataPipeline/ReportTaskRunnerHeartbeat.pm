
package Aws::DataPipeline::ReportTaskRunnerHeartbeat {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has taskrunnerId => (is => 'ro', isa => 'Str', required => 1);
  has workerGroup => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ReportTaskRunnerHeartbeatOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;