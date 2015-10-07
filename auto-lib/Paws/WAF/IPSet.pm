package Paws::WAF::IPSet;
  use Moose;
  has IPSetDescriptors => (is => 'ro', isa => 'ArrayRef[Paws::WAF::IPSetDescriptor]', required => 1);
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;
