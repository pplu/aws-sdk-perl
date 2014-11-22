
package Paws::CodeDeploy::GetDeploymentConfigOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentConfigInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentConfigInfo');

}
1;