
package Aws::Route53Domains::UpdateDomainContact {
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainContactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;