# Generated from default/object.tt
package Paws::AppMesh::VirtualRouterData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_ResourceMetadata AppMesh_VirtualRouterSpec AppMesh_VirtualRouterStatus/;
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has Metadata => (is => 'ro', isa => AppMesh_ResourceMetadata, required => 1);
  has Spec => (is => 'ro', isa => AppMesh_VirtualRouterSpec, required => 1);
  has Status => (is => 'ro', isa => AppMesh_VirtualRouterStatus, required => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::AppMesh::VirtualRouterSpec',
                           'type' => 'AppMesh_VirtualRouterSpec'
                         },
               'Status' => {
                             'class' => 'Paws::AppMesh::VirtualRouterStatus',
                             'type' => 'AppMesh_VirtualRouterStatus'
                           },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'VirtualRouterName' => {
                                        'type' => 'Str'
                                      },
               'Metadata' => {
                               'class' => 'Paws::AppMesh::ResourceMetadata',
                               'type' => 'AppMesh_ResourceMetadata'
                             }
             },
  'NameInRequest' => {
                       'Spec' => 'spec',
                       'Status' => 'status',
                       'MeshName' => 'meshName',
                       'VirtualRouterName' => 'virtualRouterName',
                       'Metadata' => 'metadata'
                     },
  'IsRequired' => {
                    'Spec' => 1,
                    'Status' => 1,
                    'MeshName' => 1,
                    'VirtualRouterName' => 1,
                    'Metadata' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualRouterData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualRouterData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., VirtualRouterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualRouterData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object representing a virtual router returned by a describe
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the virtual router resides in.


=head2 B<REQUIRED> Metadata => AppMesh_ResourceMetadata

  The associated metadata for the virtual router.


=head2 B<REQUIRED> Spec => AppMesh_VirtualRouterSpec

  The specifications of the virtual router.


=head2 B<REQUIRED> Status => AppMesh_VirtualRouterStatus

  The current status of the virtual router.


=head2 B<REQUIRED> VirtualRouterName => Str

  The name of the virtual router.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

