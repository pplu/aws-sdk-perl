
package Aws::CodeDeploy::GetDeploymentConfigOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentConfigInfo => (is => 'ro', isa => 'Aws::CodeDeploy::DeploymentConfigInfo');

}
1;