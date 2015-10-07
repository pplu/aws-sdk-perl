package Paws::WAF::WebACLUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ActivatedRule => (is => 'ro', isa => 'Paws::WAF::ActivatedRule', required => 1);
1;
