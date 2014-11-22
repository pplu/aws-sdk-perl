
package Paws::CodeDeploy::ListDeploymentConfigsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentConfigsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;