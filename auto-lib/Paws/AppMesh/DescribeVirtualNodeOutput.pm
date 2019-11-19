
package Paws::AppMesh::DescribeVirtualNodeOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualNode');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualNodeData/;
  has VirtualNode => (is => 'ro', isa => AppMesh_VirtualNodeData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VirtualNode' => 'virtualNode'
                     },
  'IsRequired' => {
                    'VirtualNode' => 1
                  },
  'types' => {
               'VirtualNode' => {
                                  'class' => 'Paws::AppMesh::VirtualNodeData',
                                  'type' => 'AppMesh_VirtualNodeData'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualNodeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualNode => AppMesh_VirtualNodeData

The full description of your virtual node.


=head2 _request_id => Str


=cut

