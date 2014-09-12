package Aws::EMR::PlacementType {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}
1
