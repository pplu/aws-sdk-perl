
package Paws::Route53Domains::EnableDomainTransferLockResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
1;