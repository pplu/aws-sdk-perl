
package Paws::Neptune::DBClusterMessage;
  use Moose;
  has DBClusters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBCluster]', request_name => 'DBCluster', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterMessage

=head1 ATTRIBUTES


=head2 DBClusters => ArrayRef[L<Paws::Neptune::DBCluster>]

Contains a list of DB clusters for the user.


=head2 Marker => Str

A pagination token that can be used in a subsequent DescribeDBClusters
request.


=head2 _request_id => Str


=cut

