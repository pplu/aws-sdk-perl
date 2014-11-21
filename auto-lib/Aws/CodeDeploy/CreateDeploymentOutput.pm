
package Aws::CodeDeploy::CreateDeploymentOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentId => (is => 'ro', isa => 'Str');

}
1;