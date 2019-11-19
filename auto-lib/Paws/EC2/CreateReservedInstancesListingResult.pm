
package Paws::EC2::CreateReservedInstancesListingResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservedInstancesListing/;
  has ReservedInstancesListings => (is => 'ro', isa => ArrayRef[EC2_ReservedInstancesListing]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReservedInstancesListings' => 'reservedInstancesListingsSet'
                     },
  'types' => {
               'ReservedInstancesListings' => {
                                                'type' => 'ArrayRef[EC2_ReservedInstancesListing]',
                                                'class' => 'Paws::EC2::ReservedInstancesListing'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReservedInstancesListingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesListings => ArrayRef[EC2_ReservedInstancesListing]

Information about the Standard Reserved Instance listing.


=head2 _request_id => Str


=cut

