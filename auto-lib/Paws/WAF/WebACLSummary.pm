package Paws::WAF::WebACLSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
1;
