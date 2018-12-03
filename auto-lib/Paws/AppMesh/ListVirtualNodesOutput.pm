
package Paws::AppMesh::ListVirtualNodesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VirtualNodes => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::VirtualNodeRef]', traits => ['NameInRequest'], request_name => 'virtualNodes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualNodesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualNodes>
request. When the results of a C<ListVirtualNodes> request exceed
C<limit>, this value can be used to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualNodes => ArrayRef[L<Paws::AppMesh::VirtualNodeRef>]

The list of existing virtual nodes for the specified service mesh.


=head2 _request_id => Str


=cut

