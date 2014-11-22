
package Paws::OpsWorks::CreateDeployment {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Paws::OpsWorks::DeploymentCommand', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateDeploymentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;