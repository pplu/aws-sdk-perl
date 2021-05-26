
package Paws::Chime::ListRoomMembershipsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RoomMemberships => (is => 'ro', isa => 'ArrayRef[Paws::Chime::RoomMembership]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListRoomMembershipsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 RoomMemberships => ArrayRef[L<Paws::Chime::RoomMembership>]

The room membership details.


=head2 _request_id => Str


=cut

