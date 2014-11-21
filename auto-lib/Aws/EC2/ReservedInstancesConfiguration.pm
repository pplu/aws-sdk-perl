package Aws::EC2::ReservedInstancesConfiguration {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
}
1;
