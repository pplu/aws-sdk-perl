
package Aws::OpsWorks::DescribeElasticLoadBalancersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticLoadBalancer]');

}
1;
