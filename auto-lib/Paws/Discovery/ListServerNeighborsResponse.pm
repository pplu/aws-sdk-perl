
package Paws::Discovery::ListServerNeighborsResponse;
  use Moose;
  has KnownDependencyCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'knownDependencyCount' );
  has Neighbors => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::NeighborConnectionDetail]', traits => ['NameInRequest'], request_name => 'neighbors' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListServerNeighborsResponse

=head1 ATTRIBUTES


=head2 KnownDependencyCount => Int

Count of distinct servers that are one hop away from the given server.


=head2 B<REQUIRED> Neighbors => ArrayRef[L<Paws::Discovery::NeighborConnectionDetail>]

List of distinct servers that are one hop away from the given server.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
specified 100 IDs for
C<ListServerNeighborsRequest$neighborConfigurationIds> but set
C<ListServerNeighborsRequest$maxResults> to 10, you received a set of
10 results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;