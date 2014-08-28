
package Aws::Route53Domains::TransferDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
1;
