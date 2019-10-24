# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetRoomResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Room/;
  has Room => (is => 'ro', isa => AlexaForBusiness_Room);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Room' => {
                           'class' => 'Paws::AlexaForBusiness::Room',
                           'type' => 'AlexaForBusiness_Room'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetRoomResponse

=head1 ATTRIBUTES


=head2 Room => AlexaForBusiness_Room

The details of the room requested.


=head2 _request_id => Str


=cut

1;