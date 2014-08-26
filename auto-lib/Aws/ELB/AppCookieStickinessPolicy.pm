package Aws::ELB::AppCookieStickinessPolicy {
  use Moose;
  with ('AWS::API::ResultParser');
  has CookieName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
}
1
