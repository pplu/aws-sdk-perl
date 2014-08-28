
package Aws::CloudSearch::ListDomainNamesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'Aws::CloudSearch::DomainNameMap');

}
1;