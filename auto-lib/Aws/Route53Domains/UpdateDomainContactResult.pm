
package Aws::Route53Domains::UpdateDomainContactResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
1;
