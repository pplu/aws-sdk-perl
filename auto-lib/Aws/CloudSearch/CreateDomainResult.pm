
package Aws::CloudSearch::CreateDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
1;