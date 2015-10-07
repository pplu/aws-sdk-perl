package Paws::WAF::IPSetUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has IPSetDescriptor => (is => 'ro', isa => 'Paws::WAF::IPSetDescriptor', required => 1);
1;
