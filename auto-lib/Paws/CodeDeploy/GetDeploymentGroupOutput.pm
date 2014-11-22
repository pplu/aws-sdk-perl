
package Paws::CodeDeploy::GetDeploymentGroupOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentGroupInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentGroupInfo');

}
1;