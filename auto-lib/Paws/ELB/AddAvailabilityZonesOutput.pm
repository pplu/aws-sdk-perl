
package Paws::ELB::AddAvailabilityZonesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;