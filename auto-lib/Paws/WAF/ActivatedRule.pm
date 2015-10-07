package Paws::WAF::ActivatedRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::WAF::WafAction', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;
