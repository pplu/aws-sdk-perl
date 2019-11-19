
package Paws::AppMesh::DescribeVirtualRouterOutput;
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
  'IsRequired' => {
                    'VirtualRouter' => 1
                  },
  'NameInRequest' => {
                       'VirtualRouter' => 'virtualRouter'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualRouterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualRouter => AppMesh_VirtualRouterData

The full description of your virtual router.


=head2 _request_id => Str


=cut

