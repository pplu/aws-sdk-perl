
package Aws::EC2::CreateInstanceExportTaskResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ExportTask => (is => 'ro', isa => 'Aws::EC2::ExportTask', traits => ['Unwrapped'], xmlname => 'exportTask');

}
1;