package Paws::ELB::LBCookieStickinessPolicy {
  use Moose;
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has PolicyName => (is => 'ro', isa => 'Str');
}
1;
