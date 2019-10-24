# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ResolveRoomResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_RoomSkillParameter/;
  has RoomArn => (is => 'ro', isa => Str);
  has RoomName => (is => 'ro', isa => Str);
  has RoomSkillParameters => (is => 'ro', isa => ArrayRef[AlexaForBusiness_RoomSkillParameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoomName' => {
                               'type' => 'Str'
                             },
               'RoomArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoomSkillParameters' => {
                                          'class' => 'Paws::AlexaForBusiness::RoomSkillParameter',
                                          'type' => 'ArrayRef[AlexaForBusiness_RoomSkillParameter]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ResolveRoomResponse

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the room from which the skill request was invoked.


=head2 RoomName => Str

The name of the room from which the skill request was invoked.


=head2 RoomSkillParameters => ArrayRef[AlexaForBusiness_RoomSkillParameter]

Response to get the room profile request. Required.


=head2 _request_id => Str


=cut

1;