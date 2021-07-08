
package Paws::ES::DescribeInboundCrossClusterSearchConnectionsResponse;
  use Moose;
  has CrossClusterSearchConnections => (is => 'ro', isa => 'ArrayRef[Paws::ES::InboundCrossClusterSearchConnection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeInboundCrossClusterSearchConnectionsResponse

=head1 ATTRIBUTES


=head2 CrossClusterSearchConnections => ArrayRef[L<Paws::ES::InboundCrossClusterSearchConnection>]

Consists of list of C<InboundCrossClusterSearchConnection> matching the
specified filter criteria.


=head2 NextToken => Str

If more results are available and NextToken is present, make the next
request to the same API with the received NextToken to paginate the
remaining results.


=head2 _request_id => Str


=cut

