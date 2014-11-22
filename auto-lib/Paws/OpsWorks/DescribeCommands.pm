
package Paws::OpsWorks::DescribeCommands {
  use Moose;
  has CommandIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommands');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeCommandsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;