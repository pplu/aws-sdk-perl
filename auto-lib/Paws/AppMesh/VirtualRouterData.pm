package Paws::AppMesh::VirtualRouterData;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', request_name => 'meshName', traits => ['NameInRequest'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::AppMesh::ResourceMetadata', request_name => 'metadata', traits => ['NameInRequest']);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterSpec', request_name => 'spec', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterStatus', request_name => 'status', traits => ['NameInRequest']);
  has VirtualRouterName => (is => 'ro', isa => 'Str', request_name => 'virtualRouterName', traits => ['NameInRequest'], required => 1);
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

  The name of the service mesh in which the virtual router resides.


=head2 Metadata => L<Paws::AppMesh::ResourceMetadata>

  The associated metadata for the virtual router.


=head2 Spec => L<Paws::AppMesh::VirtualRouterSpec>

  The specifications of the virtual router.


=head2 Status => L<Paws::AppMesh::VirtualRouterStatus>

  The current status of the virtual router.


=head2 B<REQUIRED> VirtualRouterName => Str

  The name of the virtual router.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

