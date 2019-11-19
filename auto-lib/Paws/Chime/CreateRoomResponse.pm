
package Paws::Chime::CreateRoomResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Room/;
  has Room => (is => 'ro', isa => Chime_Room);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Room' => {
                           'type' => 'Chime_Room',
                           'class' => 'Paws::Chime::Room'
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

Paws::Chime::CreateRoomResponse

=head1 ATTRIBUTES


=head2 Room => Chime_Room

The room details.


=head2 _request_id => Str


=cut

