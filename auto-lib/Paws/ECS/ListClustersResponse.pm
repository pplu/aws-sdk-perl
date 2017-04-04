
package Paws::ECS::ListClustersResponse;
  use Moose;
  has ClusterArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clusterArns' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListClustersResponse

=head1 ATTRIBUTES


=head2 ClusterArns => ArrayRef[Str|Undef]

The list of full Amazon Resource Name (ARN) entries for each cluster
associated with your account.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListClusters> request.
When the results of a C<ListClusters> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;