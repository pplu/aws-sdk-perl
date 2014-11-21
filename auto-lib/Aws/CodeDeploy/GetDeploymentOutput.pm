
package Aws::CodeDeploy::GetDeploymentOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentInfo => (is => 'ro', isa => 'Aws::CodeDeploy::DeploymentInfo');

}
1;