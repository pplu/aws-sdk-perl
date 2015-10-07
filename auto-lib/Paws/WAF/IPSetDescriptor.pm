package Paws::WAF::IPSetDescriptor;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;
