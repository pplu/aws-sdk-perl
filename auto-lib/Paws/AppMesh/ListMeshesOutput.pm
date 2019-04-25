
package Paws::AppMesh::ListMeshesOutput;
  use Moose;
  has Meshes => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::MeshRef]', traits => ['NameInRequest'], request_name => 'meshes', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListMeshesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Meshes => ArrayRef[L<Paws::AppMesh::MeshRef>]

The list of existing service meshes.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListMeshes> request.
When the results of a C<ListMeshes> request exceed C<limit>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

