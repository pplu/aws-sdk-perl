
package Paws::EKS::ListClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clusters');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[Str|Undef]

A list of all of the clusters for your account in the specified Region.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListClusters> request.
When the results of a C<ListClusters> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

