
package Paws::OpsWorks::DescribeDeploymentsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Deployment]');

}
1;