
package Aws::Route53Domains::ListOperationsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextPageMarker => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::OperationSummary]', required => 1);

}
1;