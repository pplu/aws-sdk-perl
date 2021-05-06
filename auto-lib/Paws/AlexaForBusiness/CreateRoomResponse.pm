
package Paws::AlexaForBusiness::CreateRoomResponse;
  use Moose;
  has RoomArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateRoomResponse

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the newly created room in the response.


=head2 _request_id => Str


=cut

1;