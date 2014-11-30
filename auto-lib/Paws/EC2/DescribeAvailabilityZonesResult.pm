
package Paws::EC2::DescribeAvailabilityZonesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AvailabilityZone]', traits => ['Unwrapped'], xmlname => 'availabilityZoneInfo');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAvailabilityZonesResult

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Paws::EC2::AvailabilityZone]

  

Information about one or more Availability Zones.











=cut

