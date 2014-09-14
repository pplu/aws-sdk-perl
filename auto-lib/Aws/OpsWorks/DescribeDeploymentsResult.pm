
package Aws::OpsWorks::DescribeDeploymentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Deployments => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Deployment]');

}
1;
