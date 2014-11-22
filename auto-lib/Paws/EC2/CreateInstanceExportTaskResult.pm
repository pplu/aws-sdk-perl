
package Paws::EC2::CreateInstanceExportTaskResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ExportTask => (is => 'ro', isa => 'Paws::EC2::ExportTask', traits => ['Unwrapped'], xmlname => 'exportTask');

}
1;