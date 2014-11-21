
package Aws::Route53Domains::EnableDomainTransferLock {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableDomainTransferLock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::EnableDomainTransferLockResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;