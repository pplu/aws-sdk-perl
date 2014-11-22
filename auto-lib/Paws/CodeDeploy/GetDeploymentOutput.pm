
package Paws::CodeDeploy::GetDeploymentOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentInfo');

}
1;