
package Aws::Route53Domains::DisableDomainTransferLock {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableDomainTransferLock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::DisableDomainTransferLockResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;