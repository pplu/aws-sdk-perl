
package Paws::Route53Domains::DisableDomainAutoRenew {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableDomainAutoRenew');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::DisableDomainAutoRenewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;