
package Aws::EC2::DescribeAvailabilityZonesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AvailabilityZone]', traits => ['Unwrapped'], xmlname => 'availabilityZoneInfo');

}
1;