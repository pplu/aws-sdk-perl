
package Paws::Snowball::DescribeClusterResult;
  use Moose;
  has ClusterMetadata => (is => 'ro', isa => 'Paws::Snowball::ClusterMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeClusterResult

=head1 ATTRIBUTES


=head2 ClusterMetadata => L<Paws::Snowball::ClusterMetadata>

Information about a specific cluster, including shipping information,
cluster status, and other important metadata.


=head2 _request_id => Str


=cut

1;