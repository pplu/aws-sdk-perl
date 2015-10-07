package Paws::WAF::RuleSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;
