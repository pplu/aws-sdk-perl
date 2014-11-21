
package Aws::CodeDeploy::GetDeploymentConfig {
  use Moose;
  has deploymentConfigName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::GetDeploymentConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;