package Paws::WAF::RuleUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::WAF::Predicate', required => 1);
1;
