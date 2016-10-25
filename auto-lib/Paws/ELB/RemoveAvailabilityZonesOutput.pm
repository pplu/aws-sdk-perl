
package Paws::ELB::RemoveAvailabilityZonesOutput;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::RemoveAvailabilityZonesOutput

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The remaining Availability Zones for the load balancer.




=cut

