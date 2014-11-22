
package Paws::DataPipeline::ReportTaskProgressOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has canceled => (is => 'ro', isa => 'Bool', required => 1);

}
1;