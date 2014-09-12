package Aws::EC2::SpotPrice {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');
}
1
