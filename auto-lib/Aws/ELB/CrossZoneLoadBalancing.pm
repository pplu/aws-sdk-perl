package Aws::ELB::CrossZoneLoadBalancing {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
