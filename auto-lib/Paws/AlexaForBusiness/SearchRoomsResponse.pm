
package Paws::AlexaForBusiness::SearchRoomsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rooms => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::RoomData]');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchRoomsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Rooms => ArrayRef[L<Paws::AlexaForBusiness::RoomData>]

The rooms that meet the specified set of filter criteria, in sort
order.


=head2 TotalCount => Int

The total number of rooms returned.


=head2 _request_id => Str


=cut

1;