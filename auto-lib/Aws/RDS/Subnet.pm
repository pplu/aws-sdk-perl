package Aws::RDS::Subnet {
  use Moose;
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RDS::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}
1
