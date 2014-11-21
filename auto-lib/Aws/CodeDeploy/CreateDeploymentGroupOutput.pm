
package Aws::CodeDeploy::CreateDeploymentGroupOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentGroupId => (is => 'ro', isa => 'Str');

}
1;