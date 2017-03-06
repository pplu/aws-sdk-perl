
package Paws::Organizations::DescribeHandshakeResponse;
  use Moose;
  has Handshake => (is => 'ro', isa => 'Paws::Organizations::Handshake');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeHandshakeResponse

=head1 ATTRIBUTES


=head2 Handshake => L<Paws::Organizations::Handshake>

A structure that contains information about the specified handshake.


=head2 _request_id => Str


=cut

1;