package Paws::WAF::WebACL;
  use Moose;
  has DefaultAction => (is => 'ro', isa => 'Paws::WAF::WafAction', required => 1);
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ActivatedRule]', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
1;
