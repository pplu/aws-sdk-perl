
package Aws::EC2::CreateInstanceExportTask {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3TaskSpecification', traits => ['NameInRequest'], request_name => 'exportToS3' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has TargetEnvironment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetEnvironment' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateInstanceExportTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;