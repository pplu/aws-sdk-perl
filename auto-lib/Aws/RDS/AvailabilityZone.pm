package Aws::RDS::AvailabilityZone {
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ProvisionedIopsCapable => (is => 'ro', isa => 'Bool');
}
1;
