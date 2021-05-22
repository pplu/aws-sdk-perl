
package Paws::Chime::CreateMeetingResponse;
  use Moose;
  has Meeting => (is => 'ro', isa => 'Paws::Chime::Meeting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateMeetingResponse

=head1 ATTRIBUTES


=head2 Meeting => L<Paws::Chime::Meeting>

The meeting information, including the meeting ID and C<MediaPlacement>
.


=head2 _request_id => Str


=cut

