
package Paws::Organizations::AcceptHandshakeResponse;
  use Moose;
  has Handshake => (is => 'ro', isa => 'Paws::Organizations::Handshake');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::AcceptHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => L<Paws::Organizations::Handshake>

A structure that contains details about the accepted handshake.


=head2 _request_id => Str


=cut

1;