package Aws::EC2::AvailabilityZone {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AvailabilityZoneMessage]', traits => ['Unwrapped'], xmlname => 'messageSet');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneState');
  has ZoneName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneName');
}
1
