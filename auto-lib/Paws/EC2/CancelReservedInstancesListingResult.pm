
package Paws::EC2::CancelReservedInstancesListingResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservedInstancesListing/;
  has ReservedInstancesListings => (is => 'ro', isa => ArrayRef[EC2_ReservedInstancesListing]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedInstancesListings' => {
                                                'class' => 'Paws::EC2::ReservedInstancesListing',
                                                'type' => 'ArrayRef[EC2_ReservedInstancesListing]'
                                              }
             },
  'NameInRequest' => {
                       'ReservedInstancesListings' => 'reservedInstancesListingsSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelReservedInstancesListingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesListings => ArrayRef[EC2_ReservedInstancesListing]

The Reserved Instance listing.


=head2 _request_id => Str


=cut

