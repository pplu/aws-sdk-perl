
package Paws::EC2::DescribeReservedInstancesListingsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesListingsResult

=head1 ATTRIBUTES

=head2 ReservedInstancesListings => ArrayRef[Paws::EC2::ReservedInstancesListing]

  

Information about the Reserved Instance listing.











=cut

