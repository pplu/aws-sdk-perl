
package Paws::Route53Domains::ListDomainsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::DomainSummary]', required => 1);
  has NextPageMarker => (is => 'ro', isa => 'Str');

}
1;