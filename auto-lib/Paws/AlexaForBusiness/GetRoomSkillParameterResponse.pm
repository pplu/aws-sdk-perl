
package Paws::AlexaForBusiness::GetRoomSkillParameterResponse;
  use Moose;
  has RoomSkillParameter => (is => 'ro', isa => 'Paws::AlexaForBusiness::RoomSkillParameter');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetRoomSkillParameterResponse

=head1 ATTRIBUTES


=head2 RoomSkillParameter => L<Paws::AlexaForBusiness::RoomSkillParameter>

The details of the room skill parameter requested. Required.


=head2 _request_id => Str


=cut

1;