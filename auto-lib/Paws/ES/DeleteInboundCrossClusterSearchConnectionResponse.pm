
package Paws::ES::DeleteInboundCrossClusterSearchConnectionResponse;
  use Moose;
  has CrossClusterSearchConnection => (is => 'ro', isa => 'Paws::ES::InboundCrossClusterSearchConnection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DeleteInboundCrossClusterSearchConnectionResponse

=head1 ATTRIBUTES


=head2 CrossClusterSearchConnection => L<Paws::ES::InboundCrossClusterSearchConnection>

Specifies the C<InboundCrossClusterSearchConnection> of deleted inbound
connection.


=head2 _request_id => Str


=cut

