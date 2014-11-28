
package Paws::CloudSearchDomain::SearchResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has facets => (is => 'ro', isa => 'Paws::CloudSearchDomain::Facets');
  has hits => (is => 'ro', isa => 'Paws::CloudSearchDomain::Hits');
  has status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SearchStatus');

}
1;