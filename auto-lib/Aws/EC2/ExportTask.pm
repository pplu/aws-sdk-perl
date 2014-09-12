package Aws::EC2::ExportTask {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has ExportTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'exportTaskId');
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3Task', traits => ['Unwrapped'], xmlname => 'exportToS3');
  has InstanceExportDetails => (is => 'ro', isa => 'Aws::EC2::InstanceExportDetails', traits => ['Unwrapped'], xmlname => 'instanceExport');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}
1
