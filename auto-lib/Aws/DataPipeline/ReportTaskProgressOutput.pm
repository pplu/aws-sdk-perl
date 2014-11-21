
package Aws::DataPipeline::ReportTaskProgressOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has canceled => (is => 'ro', isa => 'Bool', required => 1);

}
1;