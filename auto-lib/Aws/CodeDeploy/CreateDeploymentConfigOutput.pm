
package Aws::CodeDeploy::CreateDeploymentConfigOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentConfigId => (is => 'ro', isa => 'Str');

}
1;