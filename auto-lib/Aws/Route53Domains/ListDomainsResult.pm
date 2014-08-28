
package Aws::Route53Domains::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Domains => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::DomainSummary]', required => 1);
  has NextPageMarker => (is => 'ro', isa => 'Str');

}
1;
