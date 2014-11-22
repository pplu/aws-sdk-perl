
package Paws::CodeDeploy::CreateDeploymentGroupOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentGroupId => (is => 'ro', isa => 'Str');

}
1;