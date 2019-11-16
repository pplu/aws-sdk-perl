
package Paws::Chime::CreateRoomMembershipResponse;
  use Moose;
  has RoomMembership => (is => 'ro', isa => 'Paws::Chime::RoomMembership');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateRoomMembershipResponse

=head1 ATTRIBUTES


=head2 RoomMembership => L<Paws::Chime::RoomMembership>

The room membership details.


=head2 _request_id => Str


=cut

