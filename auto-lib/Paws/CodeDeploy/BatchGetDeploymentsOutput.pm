
package Paws::CodeDeploy::BatchGetDeploymentsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::DeploymentInfo]');

}
1;