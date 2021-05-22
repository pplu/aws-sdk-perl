
package Paws::ES::DeleteOutboundCrossClusterSearchConnectionResponse;
  use Moose;
  has CrossClusterSearchConnection => (is => 'ro', isa => 'Paws::ES::OutboundCrossClusterSearchConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DeleteOutboundCrossClusterSearchConnectionResponse

=head1 ATTRIBUTES


=head2 CrossClusterSearchConnection => L<Paws::ES::OutboundCrossClusterSearchConnection>

Specifies the C<OutboundCrossClusterSearchConnection> of deleted
outbound connection.


=head2 _request_id => Str


=cut

