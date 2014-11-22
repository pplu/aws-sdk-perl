
package Paws::EC2::DescribeExportTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ExportTask]', traits => ['Unwrapped'], xmlname => 'exportTaskSet');

}
1;