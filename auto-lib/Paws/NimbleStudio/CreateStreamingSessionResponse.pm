
package Paws::NimbleStudio::CreateStreamingSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::NimbleStudio::StreamingSession', traits => ['NameInRequest'], request_name => 'session');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateStreamingSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::NimbleStudio::StreamingSession>

The session.


=head2 _request_id => Str


=cut

