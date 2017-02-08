
package Paws::EC2::DescribeAvailabilityZonesResult;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AvailabilityZone]', request_name => 'availabilityZoneInfo', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAvailabilityZonesResult

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::EC2::AvailabilityZone>]

Information about one or more Availability Zones.


=head2 _request_id => Str


=cut

