# Generated from default/object.tt
package Paws::AppMesh::MeshData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_MeshStatus AppMesh_MeshSpec AppMesh_ResourceMetadata/;
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has Metadata => (is => 'ro', isa => AppMesh_ResourceMetadata, required => 1);
  has Spec => (is => 'ro', isa => AppMesh_MeshSpec, required => 1);
  has Status => (is => 'ro', isa => AppMesh_MeshStatus, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MeshName' => 'meshName',
                       'Status' => 'status',
                       'Spec' => 'spec',
                       'Metadata' => 'metadata'
                     },
  'IsRequired' => {
                    'Metadata' => 1,
                    'Status' => 1,
                    'Spec' => 1,
                    'MeshName' => 1
                  },
  'types' => {
               'Metadata' => {
                               'class' => 'Paws::AppMesh::ResourceMetadata',
                               'type' => 'AppMesh_ResourceMetadata'
                             },
               'Status' => {
                             'type' => 'AppMesh_MeshStatus',
                             'class' => 'Paws::AppMesh::MeshStatus'
                           },
               'Spec' => {
                           'class' => 'Paws::AppMesh::MeshSpec',
                           'type' => 'AppMesh_MeshSpec'
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

Paws::AppMesh::MeshData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::MeshData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::MeshData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object that represents a service mesh returned by a describe
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh.


=head2 B<REQUIRED> Metadata => AppMesh_ResourceMetadata

  The associated metadata for the service mesh.


=head2 B<REQUIRED> Spec => AppMesh_MeshSpec

  The associated specification for the service mesh.


=head2 B<REQUIRED> Status => AppMesh_MeshStatus

  The status of the service mesh.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

