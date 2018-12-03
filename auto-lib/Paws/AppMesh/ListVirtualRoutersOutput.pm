
package Paws::AppMesh::ListVirtualRoutersOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VirtualRouters => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::VirtualRouterRef]', traits => ['NameInRequest'], request_name => 'virtualRouters', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualRoutersOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualRouters>
request. When the results of a C<ListVirtualRouters> request exceed
C<limit>, this value can be used to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualRouters => ArrayRef[L<Paws::AppMesh::VirtualRouterRef>]

The list of existing virtual routers for the specified service mesh.


=head2 _request_id => Str


=cut

