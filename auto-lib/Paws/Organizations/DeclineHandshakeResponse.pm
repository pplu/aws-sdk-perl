
package Paws::Organizations::DeclineHandshakeResponse;
  use Moose;
  has Handshake => (is => 'ro', isa => 'Paws::Organizations::Handshake');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DeclineHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => L<Paws::Organizations::Handshake>

A structure that contains details about the declined handshake. The
state is updated to show the value C<DECLINED>.


=head2 _request_id => Str


=cut

1;