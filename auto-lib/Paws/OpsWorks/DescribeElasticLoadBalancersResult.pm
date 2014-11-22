
package Paws::OpsWorks::DescribeElasticLoadBalancersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ElasticLoadBalancer]');

}
1;