
package Paws::AlexaForBusiness::SearchAddressBooksResponse;
  use Moose;
  has AddressBooks => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::AddressBookData]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchAddressBooksResponse

=head1 ATTRIBUTES


=head2 AddressBooks => ArrayRef[L<Paws::AlexaForBusiness::AddressBookData>]

The address books that meet the specified set of filter criteria, in
sort order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of address books returned.


=head2 _request_id => Str


=cut

1;