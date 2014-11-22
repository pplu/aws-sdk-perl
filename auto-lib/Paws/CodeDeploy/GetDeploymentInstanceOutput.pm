
package Paws::CodeDeploy::GetDeploymentInstanceOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has instanceSummary => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceSummary');

}
1;