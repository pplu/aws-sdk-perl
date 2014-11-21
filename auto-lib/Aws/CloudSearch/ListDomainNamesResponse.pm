
package Aws::CloudSearch::ListDomainNamesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'Aws::CloudSearch::DomainNameMap');

}
1;