package Paws::WAF::ByteMatchSet;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has ByteMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ByteMatchTuple]', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;
