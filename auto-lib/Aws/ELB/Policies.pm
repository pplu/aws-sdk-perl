package Aws::ELB::Policies {
  use Moose;
  has AppCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::AppCookieStickinessPolicy]');
  has LBCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LBCookieStickinessPolicy]');
  has OtherPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
}
1;
