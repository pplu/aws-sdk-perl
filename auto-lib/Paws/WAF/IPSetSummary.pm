package Paws::WAF::IPSetSummary;
  use Moose;
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;
