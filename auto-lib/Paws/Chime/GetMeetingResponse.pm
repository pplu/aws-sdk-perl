
package Paws::Chime::GetMeetingResponse;
  use Moose;
  has Meeting => (is => 'ro', isa => 'Paws::Chime::Meeting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetMeetingResponse

=head1 ATTRIBUTES


=head2 Meeting => L<Paws::Chime::Meeting>

The Amazon Chime SDK meeting information.


=head2 _request_id => Str


=cut

