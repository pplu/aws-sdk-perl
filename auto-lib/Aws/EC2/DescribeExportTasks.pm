
package Aws::EC2::DescribeExportTasks {
  use Moose;
  has ExportTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExportTaskId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeExportTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;