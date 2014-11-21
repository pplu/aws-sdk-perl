
package Aws::Route53Domains::ListDomainsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Domains => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::DomainSummary]', required => 1);
  has NextPageMarker => (is => 'ro', isa => 'Str');

}
1;