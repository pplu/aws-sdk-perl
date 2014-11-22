
package Paws::CloudSearch::DeleteDomainResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Paws::CloudSearch::DomainStatus');

}
1;