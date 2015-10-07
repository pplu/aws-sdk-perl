package Paws::WAF::SqlInjectionMatchSetUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchTuple => (is => 'ro', isa => 'Paws::WAF::SqlInjectionMatchTuple', required => 1);
1;
