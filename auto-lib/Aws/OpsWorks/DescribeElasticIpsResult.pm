
package Aws::OpsWorks::DescribeElasticIpsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticIp]');

}
1;
