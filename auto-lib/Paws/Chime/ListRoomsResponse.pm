
package Paws::Chime::ListRoomsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_Room/;
  has NextToken => (is => 'ro', isa => Str);
  has Rooms => (is => 'ro', isa => ArrayRef[Chime_Room]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Rooms' => {
                            'type' => 'ArrayRef[Chime_Room]',
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

Paws::Chime::ListRoomsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 Rooms => ArrayRef[Chime_Room]

The room details.


=head2 _request_id => Str


=cut

