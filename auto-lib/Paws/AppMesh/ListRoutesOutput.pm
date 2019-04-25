
package Paws::AppMesh::ListRoutesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::RouteRef]', traits => ['NameInRequest'], request_name => 'routes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListRoutesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRoutes> request.
When the results of a C<ListRoutes> request exceed C<limit>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 B<REQUIRED> Routes => ArrayRef[L<Paws::AppMesh::RouteRef>]

The list of existing routes for the specified service mesh and virtual
router.


=head2 _request_id => Str


=cut

