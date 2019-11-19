
package Paws::Chime::GetRoomResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Room/;
  has Room => (is => 'ro', isa => Chime_Room);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Room' => {
                           'type' => 'Chime_Room',
                           'class' => 'Paws::Chime::Room'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetRoomResponse

=head1 ATTRIBUTES


=head2 Room => Chime_Room

The room details.


=head2 _request_id => Str


=cut

