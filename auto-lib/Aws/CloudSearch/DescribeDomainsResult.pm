
package Aws::CloudSearch::DescribeDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::DomainStatus]', required => 1);

}
1;