
package Aws::Route53Domains::UpdateDomainContactPrivacy {
  use Moose;
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has TechPrivacy => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContactPrivacy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainContactPrivacyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;