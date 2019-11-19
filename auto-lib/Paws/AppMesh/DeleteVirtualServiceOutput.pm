
package Paws::AppMesh::DeleteVirtualServiceOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualService');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualServiceData/;
  has VirtualService => (is => 'ro', isa => AppMesh_VirtualServiceData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VirtualService' => {
                                     'class' => 'Paws::AppMesh::VirtualServiceData',
                                     'type' => 'AppMesh_VirtualServiceData'
                                   }
             },
  'IsRequired' => {
                    'VirtualService' => 1
                  },
  'NameInRequest' => {
                       'VirtualService' => 'virtualService'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualServiceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualService => AppMesh_VirtualServiceData

The virtual service that was deleted.


=head2 _request_id => Str


=cut

