
package Paws::Chime::ListRoomMembershipsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_RoomMembership/;
  has NextToken => (is => 'ro', isa => Str);
  has RoomMemberships => (is => 'ro', isa => ArrayRef[Chime_RoomMembership]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoomMemberships' => {
                                      'class' => 'Paws::Chime::RoomMembership',
                                      'type' => 'ArrayRef[Chime_RoomMembership]'
                                    },
               'NextToken' => {
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

Paws::Chime::ListRoomMembershipsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 RoomMemberships => ArrayRef[Chime_RoomMembership]

The room membership details.


=head2 _request_id => Str


=cut

