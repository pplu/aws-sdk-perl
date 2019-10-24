
package Paws::AppMesh::DeleteMeshOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Mesh');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_MeshData/;
  has Mesh => (is => 'ro', isa => AppMesh_MeshData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Mesh' => {
                           'class' => 'Paws::AppMesh::MeshData',
                           'type' => 'AppMesh_MeshData'
                         }
             },
  'NameInRequest' => {
                       'Mesh' => 'mesh'
                     },
  'IsRequired' => {
                    'Mesh' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteMeshOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mesh => AppMesh_MeshData

The service mesh that was deleted.


=head2 _request_id => Str


=cut

