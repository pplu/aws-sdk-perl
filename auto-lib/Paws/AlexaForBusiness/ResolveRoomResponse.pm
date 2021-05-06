
package Paws::AlexaForBusiness::ResolveRoomResponse;
  use Moose;
  has RoomArn => (is => 'ro', isa => 'Str');
  has RoomName => (is => 'ro', isa => 'Str');
  has RoomSkillParameters => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::RoomSkillParameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ResolveRoomResponse

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the room from which the skill request was invoked.


=head2 RoomName => Str

The name of the room from which the skill request was invoked.


=head2 RoomSkillParameters => ArrayRef[L<Paws::AlexaForBusiness::RoomSkillParameter>]

Response to get the room profile request. Required.


=head2 _request_id => Str


=cut

1;