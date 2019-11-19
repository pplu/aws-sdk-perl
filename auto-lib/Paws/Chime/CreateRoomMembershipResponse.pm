
package Paws::Chime::CreateRoomMembershipResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_RoomMembership/;
  has RoomMembership => (is => 'ro', isa => Chime_RoomMembership);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoomMembership' => {
                                     'class' => 'Paws::Chime::RoomMembership',
                                     'type' => 'Chime_RoomMembership'
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

Paws::Chime::CreateRoomMembershipResponse

=head1 ATTRIBUTES


=head2 RoomMembership => Chime_RoomMembership

The room membership details.


=head2 _request_id => Str


=cut

