
package Aws::Route53Domains::UpdateDomainNameservers {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::Nameserver]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainNameservers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainNameserversResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
