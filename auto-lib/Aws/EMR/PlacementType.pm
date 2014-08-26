package Aws::EMR::PlacementType {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}
1
