
package Paws::CodeDeploy::ListDeploymentInstancesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has instancesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;