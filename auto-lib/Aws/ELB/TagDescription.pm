package Aws::ELB::TagDescription {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Tag]');
}
1
