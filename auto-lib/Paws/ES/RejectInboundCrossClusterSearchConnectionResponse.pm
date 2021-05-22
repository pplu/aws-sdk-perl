
package Paws::ES::RejectInboundCrossClusterSearchConnectionResponse;
  use Moose;
  has CrossClusterSearchConnection => (is => 'ro', isa => 'Paws::ES::InboundCrossClusterSearchConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::RejectInboundCrossClusterSearchConnectionResponse

=head1 ATTRIBUTES


=head2 CrossClusterSearchConnection => L<Paws::ES::InboundCrossClusterSearchConnection>

Specifies the C<InboundCrossClusterSearchConnection> of rejected
inbound connection.


=head2 _request_id => Str


=cut

