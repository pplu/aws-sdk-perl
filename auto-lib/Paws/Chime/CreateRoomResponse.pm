
package Paws::Chime::CreateRoomResponse;
  use Moose;
  has Room => (is => 'ro', isa => 'Paws::Chime::Room');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateRoomResponse

=head1 ATTRIBUTES


=head2 Room => L<Paws::Chime::Room>

The room details.


=head2 _request_id => Str


=cut

