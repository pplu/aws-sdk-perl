
package Paws::Kafka::ListNodesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has NodeInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::NodeInfo]', traits => ['NameInRequest'], request_name => 'nodeInfoList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The paginated results marker. When the result of a ListNodes operation
is truncated, the call returns NextToken in the response. To get
another batch of nodes, provide this token in your next request.


=head2 NodeInfoList => ArrayRef[L<Paws::Kafka::NodeInfo>]

List containing a NodeInfo object.


=head2 _request_id => Str


=cut

