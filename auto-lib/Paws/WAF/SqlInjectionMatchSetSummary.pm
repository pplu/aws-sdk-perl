package Paws::WAF::SqlInjectionMatchSetSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);
1;
