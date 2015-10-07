package Paws::WAF::SqlInjectionMatchTuple;
  use Moose;
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAF::FieldToMatch', required => 1);
  has TextTransformation => (is => 'ro', isa => 'Str', required => 1);
1;
