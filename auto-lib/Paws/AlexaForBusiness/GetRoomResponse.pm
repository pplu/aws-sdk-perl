
package Paws::AlexaForBusiness::GetRoomResponse;
  use Moose;
  has Room => (is => 'ro', isa => 'Paws::AlexaForBusiness::Room');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetRoomResponse

=head1 ATTRIBUTES


=head2 Room => L<Paws::AlexaForBusiness::Room>

The details of the room requested.


=head2 _request_id => Str


=cut

1;