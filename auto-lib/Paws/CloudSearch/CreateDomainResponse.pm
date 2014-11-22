
package Paws::CloudSearch::CreateDomainResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Paws::CloudSearch::DomainStatus');

}
1;