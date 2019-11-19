# Generated from default/object.tt
package Paws::AppMesh::VirtualNodeData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_ResourceMetadata AppMesh_VirtualNodeStatus AppMesh_VirtualNodeSpec/;
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has Metadata => (is => 'ro', isa => AppMesh_ResourceMetadata, required => 1);
  has Spec => (is => 'ro', isa => AppMesh_VirtualNodeSpec, required => 1);
  has Status => (is => 'ro', isa => AppMesh_VirtualNodeStatus, required => 1);
  has VirtualNodeName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'MeshName' => 1,
                    'VirtualNodeName' => 1,
                    'Status' => 1,
                    'Spec' => 1,
                    'Metadata' => 1
                  },
  'NameInRequest' => {
                       'MeshName' => 'meshName',
                       'Spec' => 'spec',
                       'VirtualNodeName' => 'virtualNodeName',
                       'Status' => 'status',
                       'Metadata' => 'metadata'
                     },
  'types' => {
               'VirtualNodeName' => {
                                      'type' => 'Str'
                                    },
               'Status' => {
                             'class' => 'Paws::AppMesh::VirtualNodeStatus',
                             'type' => 'AppMesh_VirtualNodeStatus'
                           },
               'Spec' => {
                           'class' => 'Paws::AppMesh::VirtualNodeSpec',
                           'type' => 'AppMesh_VirtualNodeSpec'
                         },
               'Metadata' => {
                               'type' => 'AppMesh_ResourceMetadata',
                               'class' => 'Paws::AppMesh::ResourceMetadata'
                             },
               'MeshName' => {
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

Paws::AppMesh::VirtualNodeData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualNodeData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., VirtualNodeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualNodeData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object that represents a virtual node returned by a describe
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the virtual node resides in.


=head2 B<REQUIRED> Metadata => AppMesh_ResourceMetadata

  The associated metadata for the virtual node.


=head2 B<REQUIRED> Spec => AppMesh_VirtualNodeSpec

  The specifications of the virtual node.


=head2 B<REQUIRED> Status => AppMesh_VirtualNodeStatus

  The current status for the virtual node.


=head2 B<REQUIRED> VirtualNodeName => Str

  The name of the virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

