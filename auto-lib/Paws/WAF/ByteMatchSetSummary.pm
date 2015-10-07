package Paws::WAF::ByteMatchSetSummary;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;
