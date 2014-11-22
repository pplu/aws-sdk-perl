
package Paws::CodeDeploy::ListDeploymentsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deployments => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;