
package Paws::CloudSearch::ListDomainNamesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'Paws::CloudSearch::DomainNameMap');

}
1;