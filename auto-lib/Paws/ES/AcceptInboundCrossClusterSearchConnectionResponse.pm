
package Paws::ES::AcceptInboundCrossClusterSearchConnectionResponse;
  use Moose;
  has CrossClusterSearchConnection => (is => 'ro', isa => 'Paws::ES::InboundCrossClusterSearchConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AcceptInboundCrossClusterSearchConnectionResponse

=head1 ATTRIBUTES


=head2 CrossClusterSearchConnection => L<Paws::ES::InboundCrossClusterSearchConnection>

Specifies the C<InboundCrossClusterSearchConnection> of accepted
inbound connection.


=head2 _request_id => Str


=cut

