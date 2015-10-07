package Paws::WAF::SqlInjectionMatchSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::SqlInjectionMatchTuple]', required => 1);
1;
