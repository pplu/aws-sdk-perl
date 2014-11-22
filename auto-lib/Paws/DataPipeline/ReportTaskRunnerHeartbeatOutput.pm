
package Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has terminate => (is => 'ro', isa => 'Bool', required => 1);

}
1;