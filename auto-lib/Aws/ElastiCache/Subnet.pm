package Aws::ElastiCache::Subnet {
  use Moose;
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::ElastiCache::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
}
1
