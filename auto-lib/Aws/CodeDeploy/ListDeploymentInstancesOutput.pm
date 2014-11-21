
package Aws::CodeDeploy::ListDeploymentInstancesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has instancesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;