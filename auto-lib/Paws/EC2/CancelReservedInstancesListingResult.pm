
package Paws::EC2::CancelReservedInstancesListingResult;
  use Moose;
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesListing]', request_name => 'reservedInstancesListingsSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelReservedInstancesListingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesListings => ArrayRef[L<Paws::EC2::ReservedInstancesListing>]

The Reserved Instance listing.


=head2 _request_id => Str


=cut

