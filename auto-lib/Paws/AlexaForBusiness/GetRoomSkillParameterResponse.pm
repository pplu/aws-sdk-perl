# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetRoomSkillParameterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_RoomSkillParameter/;
  has RoomSkillParameter => (is => 'ro', isa => AlexaForBusiness_RoomSkillParameter);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoomSkillParameter' => {
                                         'class' => 'Paws::AlexaForBusiness::RoomSkillParameter',
                                         'type' => 'AlexaForBusiness_RoomSkillParameter'
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

Paws::AlexaForBusiness::GetRoomSkillParameterResponse

=head1 ATTRIBUTES


=head2 RoomSkillParameter => AlexaForBusiness_RoomSkillParameter

The details of the room skill parameter requested. Required.


=head2 _request_id => Str


=cut

1;