
package Aws::OpsWorks::CreateDeploymentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeploymentId => (is => 'ro', isa => 'Str');

}
1;