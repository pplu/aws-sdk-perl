package Paws::WAF::WafAction;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;
