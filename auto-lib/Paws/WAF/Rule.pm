package Paws::WAF::Rule;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Predicates => (is => 'ro', isa => 'ArrayRef[Paws::WAF::Predicate]', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;
