package Paws::WAF::ByteMatchSetUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ByteMatchTuple => (is => 'ro', isa => 'Paws::WAF::ByteMatchTuple', required => 1);
1;
