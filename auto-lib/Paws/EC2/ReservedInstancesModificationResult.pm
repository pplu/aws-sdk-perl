package Paws::EC2::ReservedInstancesModificationResult {
  use Moose;
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has TargetConfiguration => (is => 'ro', isa => 'Paws::EC2::ReservedInstancesConfiguration', traits => ['Unwrapped'], xmlname => 'targetConfiguration');
}
1;
