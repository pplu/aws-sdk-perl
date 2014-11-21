
package Aws::CodeDeploy::StopDeployment {
  use Moose;
  has deploymentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::StopDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;