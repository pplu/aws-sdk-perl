
package Paws::Route53Domains::ListOperationsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextPageMarker => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::OperationSummary]', required => 1);

}
1;