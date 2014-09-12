package Aws::RedShift::Subnet {
  use Moose;
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RedShift::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}
1
