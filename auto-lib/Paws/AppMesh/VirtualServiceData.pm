# Generated from default/object.tt
package Paws::AppMesh::VirtualServiceData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_ResourceMetadata AppMesh_VirtualServiceStatus AppMesh_VirtualServiceSpec/;
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has Metadata => (is => 'ro', isa => AppMesh_ResourceMetadata, required => 1);
  has Spec => (is => 'ro', isa => AppMesh_VirtualServiceSpec, required => 1);
  has Status => (is => 'ro', isa => AppMesh_VirtualServiceStatus, required => 1);
  has VirtualServiceName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::AppMesh::VirtualServiceSpec',
                           'type' => 'AppMesh_VirtualServiceSpec'
                         },
               'Status' => {
                             'type' => 'AppMesh_VirtualServiceStatus',
                             'class' => 'Paws::AppMesh::VirtualServiceStatus'
                           },
               'Metadata' => {
                               'type' => 'AppMesh_ResourceMetadata',
                               'class' => 'Paws::AppMesh::ResourceMetadata'
                             },
               'VirtualServiceName' => {
                                         'type' => 'Str'
                                       },
               'MeshName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'MeshName' => 1,
                    'VirtualServiceName' => 1,
                    'Metadata' => 1,
                    'Spec' => 1,
                    'Status' => 1
                  },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Spec' => 'spec',
                       'Metadata' => 'metadata',
                       'MeshName' => 'meshName',
                       'VirtualServiceName' => 'virtualServiceName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualServiceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualServiceData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., VirtualServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualServiceData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object that represents a virtual service returned by a describe
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the virtual service resides in.


=head2 B<REQUIRED> Metadata => AppMesh_ResourceMetadata

  


=head2 B<REQUIRED> Spec => AppMesh_VirtualServiceSpec

  The specifications of the virtual service.


=head2 B<REQUIRED> Status => AppMesh_VirtualServiceStatus

  The current status of the virtual service.


=head2 B<REQUIRED> VirtualServiceName => Str

  The name of the virtual service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

