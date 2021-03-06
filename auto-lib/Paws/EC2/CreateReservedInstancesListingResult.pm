
package Paws::EC2::CreateReservedInstancesListingResult;
  use Moose;
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesListing]', request_name => 'reservedInstancesListingsSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReservedInstancesListingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesListings => ArrayRef[L<Paws::EC2::ReservedInstancesListing>]

Information about the Standard Reserved Instance listing.


=head2 _request_id => Str


=cut

