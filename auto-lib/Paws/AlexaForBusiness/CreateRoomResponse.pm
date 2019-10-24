# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateRoomResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has RoomArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoomArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateRoomResponse

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the newly created room in the response.


=head2 _request_id => Str


=cut

1;