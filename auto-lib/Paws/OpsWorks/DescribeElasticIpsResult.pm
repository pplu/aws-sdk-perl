
package Paws::OpsWorks::DescribeElasticIpsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ElasticIp]');

}
1;