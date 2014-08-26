package Aws::ELB::LBCookieStickinessPolicy {
  use Moose;
  with ('AWS::API::ResultParser');
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has PolicyName => (is => 'ro', isa => 'Str');
}
1
