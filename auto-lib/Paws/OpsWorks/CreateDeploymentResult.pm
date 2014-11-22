
package Paws::OpsWorks::CreateDeploymentResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeploymentId => (is => 'ro', isa => 'Str');

}
1;