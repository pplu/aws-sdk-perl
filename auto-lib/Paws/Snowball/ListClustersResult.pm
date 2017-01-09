
package Paws::Snowball::ListClustersResult;
  use Moose;
  has ClusterListEntries => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::ClusterListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListClustersResult

=head1 ATTRIBUTES


=head2 ClusterListEntries => ArrayRef[L<Paws::Snowball::ClusterListEntry>]

Each C<ClusterListEntry> object contains a cluster's state, a cluster's
ID, and other important status information.


=head2 NextToken => Str

HTTP requests are stateless. If you use the automatically generated
C<NextToken> value in your next C<ClusterListEntry> call, your list of
returned clusters will start from this point in the array.


=head2 _request_id => Str


=cut

1;