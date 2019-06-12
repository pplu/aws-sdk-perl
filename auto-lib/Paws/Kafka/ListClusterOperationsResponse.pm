
package Paws::Kafka::ListClusterOperationsResponse;
  use Moose;
  has ClusterOperationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ClusterOperationInfo]', traits => ['NameInRequest'], request_name => 'clusterOperationInfoList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClusterOperationsResponse

=head1 ATTRIBUTES


=head2 ClusterOperationInfoList => ArrayRef[L<Paws::Kafka::ClusterOperationInfo>]

An array of cluster operation information objects.


=head2 NextToken => Str

If the response of ListClusterOperations is truncated, it returns a
NextToken in the response. This Nexttoken should be sent in the
subsequent request to ListClusterOperations.


=head2 _request_id => Str


=cut

