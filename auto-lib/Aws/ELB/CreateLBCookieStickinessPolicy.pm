
package Aws::ELB::CreateLBCookieStickinessPolicy {
  use Moose;
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLBCookieStickinessPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');
}
1;
