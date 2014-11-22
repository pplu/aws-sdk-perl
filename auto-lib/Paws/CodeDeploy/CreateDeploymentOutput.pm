
package Paws::CodeDeploy::CreateDeploymentOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentId => (is => 'ro', isa => 'Str');

}
1;