
package Paws::ELB::RemoveAvailabilityZonesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;