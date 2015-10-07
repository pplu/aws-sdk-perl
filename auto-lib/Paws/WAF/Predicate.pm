package Paws::WAF::Predicate;
  use Moose;
  has DataId => (is => 'ro', isa => 'Str', required => 1);
  has Negated => (is => 'ro', isa => 'Bool', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;
