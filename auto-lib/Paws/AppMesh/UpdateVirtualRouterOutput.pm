
package Paws::AppMesh::UpdateVirtualRouterOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualRouter');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualRouterData/;
  has VirtualRouter => (is => 'ro', isa => AppMesh_VirtualRouterData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualRouter' => {
                                    'class' => 'Paws::AppMesh::VirtualRouterData',
                                    'type' => 'AppMesh_VirtualRouterData'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VirtualRouter' => 'virtualRouter'
                     },
  'IsRequired' => {
                    'VirtualRouter' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualRouterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualRouter => AppMesh_VirtualRouterData

A full description of the virtual router that was updated.


=head2 _request_id => Str


=cut

