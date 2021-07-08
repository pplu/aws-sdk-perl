
package Paws::NimbleStudio::CreateStreamingSessionStreamResponse;
  use Moose;
  has Stream => (is => 'ro', isa => 'Paws::NimbleStudio::StreamingSessionStream', traits => ['NameInRequest'], request_name => 'stream');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateStreamingSessionStreamResponse

=head1 ATTRIBUTES


=head2 Stream => L<Paws::NimbleStudio::StreamingSessionStream>

The stream.


=head2 _request_id => Str


=cut

