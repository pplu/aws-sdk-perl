
package Paws::AppMesh::DeleteVirtualNodeOutput;
  use Moose;
  has VirtualNode => (is => 'ro', isa => 'Paws::AppMesh::VirtualNodeData', traits => ['NameInRequest'], request_name => 'virtualNode');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualNode');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualNodeOutput

=head1 ATTRIBUTES


=head2 VirtualNode => L<Paws::AppMesh::VirtualNodeData>

The virtual node that was deleted.


=head2 _request_id => Str


=cut

