
package Aws::CodeDeploy::ListDeploymentConfigsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deploymentConfigsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;