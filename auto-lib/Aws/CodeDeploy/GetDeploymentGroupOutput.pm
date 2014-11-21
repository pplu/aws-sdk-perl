
package Aws::CodeDeploy::GetDeploymentGroupOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentGroupInfo => (is => 'ro', isa => 'Aws::CodeDeploy::DeploymentGroupInfo');

}
1;