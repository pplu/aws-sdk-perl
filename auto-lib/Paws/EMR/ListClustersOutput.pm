
package Paws::EMR::ListClustersOutput;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListClustersOutput

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::EMR::ClusterSummary>]

The list of clusters for the account based on the given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;