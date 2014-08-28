
package Aws::EC2::DescribeExportTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ExportTask]', traits => ['Unwrapped'], xmlname => 'exportTaskSet');

}
1;