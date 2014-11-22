
package Paws::CloudSearch::DescribeDomainsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::DomainStatus]', required => 1);

}
1;