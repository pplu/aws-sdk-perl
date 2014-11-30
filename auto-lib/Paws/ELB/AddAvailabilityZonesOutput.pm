
package Paws::ELB::AddAvailabilityZonesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::AddAvailabilityZonesOutput

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Str]

  

An updated list of Availability Zones for the load balancer.











=cut

