
package Paws::AppMesh::UpdateMeshOutput;
  use Moose;
  has Mesh => (is => 'ro', isa => 'Paws::AppMesh::MeshData', traits => ['NameInRequest'], request_name => 'mesh', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Mesh');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateMeshOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mesh => L<Paws::AppMesh::MeshData>




=head2 _request_id => Str


=cut

