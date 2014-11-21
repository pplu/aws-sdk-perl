package Aws::ELB::LoadBalancerAttributes {
  use Moose;
  has AccessLog => (is => 'ro', isa => 'Aws::ELB::AccessLog');
  has AdditionalAttributes => (is => 'ro', isa => 'ArrayRef[Aws::ELB::AdditionalAttribute]');
  has ConnectionDraining => (is => 'ro', isa => 'Aws::ELB::ConnectionDraining');
  has ConnectionSettings => (is => 'ro', isa => 'Aws::ELB::ConnectionSettings');
  has CrossZoneLoadBalancing => (is => 'ro', isa => 'Aws::ELB::CrossZoneLoadBalancing');
}
1;
