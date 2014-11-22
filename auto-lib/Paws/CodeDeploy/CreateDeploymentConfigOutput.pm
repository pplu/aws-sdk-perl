
package Paws::CodeDeploy::CreateDeploymentConfigOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentConfigId => (is => 'ro', isa => 'Str');

}
1;