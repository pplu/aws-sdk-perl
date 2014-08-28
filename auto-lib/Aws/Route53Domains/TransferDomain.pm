
package Aws::Route53Domains::TransferDomain {
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has AuthCode => (is => 'ro', isa => 'Str');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::Nameserver]', required => 1);
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::TransferDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
