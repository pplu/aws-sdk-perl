
package Aws::DataPipeline::ReportTaskRunnerHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has terminate => (is => 'ro', isa => 'Bool', required => 1);

}
1;
