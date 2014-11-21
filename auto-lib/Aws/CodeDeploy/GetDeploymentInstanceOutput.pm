
package Aws::CodeDeploy::GetDeploymentInstanceOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has instanceSummary => (is => 'ro', isa => 'Aws::CodeDeploy::InstanceSummary');

}
1;