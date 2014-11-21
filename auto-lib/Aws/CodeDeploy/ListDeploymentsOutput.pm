
package Aws::CodeDeploy::ListDeploymentsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has deployments => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;