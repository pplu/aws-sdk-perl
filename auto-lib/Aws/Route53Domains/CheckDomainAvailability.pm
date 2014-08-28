
package Aws::Route53Domains::CheckDomainAvailability {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDomainAvailability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::CheckDomainAvailabilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;