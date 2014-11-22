
package Paws::EC2::DescribeAvailabilityZonesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AvailabilityZone]', traits => ['Unwrapped'], xmlname => 'availabilityZoneInfo');

}
1;