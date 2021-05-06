
package Paws::Chime::ListRoomsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rooms => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Room]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListRoomsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 Rooms => ArrayRef[L<Paws::Chime::Room>]

The room details.


=head2 _request_id => Str


=cut

