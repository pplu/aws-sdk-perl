package Aws::EC2::ReservedInstancesId {
  use Moose;
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
}
1
