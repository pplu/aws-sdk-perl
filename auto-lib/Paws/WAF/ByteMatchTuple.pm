package Paws::WAF::ByteMatchTuple;
  use Moose;
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAF::FieldToMatch', required => 1);
  has PositionalConstraint => (is => 'ro', isa => 'Str', required => 1);
  has TargetString => (is => 'ro', isa => 'Str', required => 1);
  has TextTransformation => (is => 'ro', isa => 'Str', required => 1);
1;
