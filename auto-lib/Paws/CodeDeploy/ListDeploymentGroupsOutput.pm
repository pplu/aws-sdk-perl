
package Paws::CodeDeploy::ListDeploymentGroupsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has applicationName => (is => 'ro', isa => 'Str');
  has deploymentGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;