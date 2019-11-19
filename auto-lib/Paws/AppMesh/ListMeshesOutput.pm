
package Paws::AppMesh::ListMeshesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_MeshRef/;
  has Meshes => (is => 'ro', isa => ArrayRef[AppMesh_MeshRef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Meshes' => {
                             'class' => 'Paws::AppMesh::MeshRef',
                             'type' => 'ArrayRef[AppMesh_MeshRef]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Meshes' => 1
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Meshes' => 'meshes'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListMeshesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Meshes => ArrayRef[AppMesh_MeshRef]

The list of existing service meshes.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListMeshes> request.
When the results of a C<ListMeshes> request exceed C<limit>, you can
use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

