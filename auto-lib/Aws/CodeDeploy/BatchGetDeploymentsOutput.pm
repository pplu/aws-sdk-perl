
package Aws::CodeDeploy::BatchGetDeploymentsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentsInfo => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::DeploymentInfo]');

}
1;