package Paws::AppMesh::RouteData;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', request_name => 'meshName', traits => ['NameInRequest'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::AppMesh::ResourceMetadata', request_name => 'metadata', traits => ['NameInRequest']);
  has RouteName => (is => 'ro', isa => 'Str', request_name => 'routeName', traits => ['NameInRequest'], required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::RouteSpec', request_name => 'spec', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::AppMesh::RouteStatus', request_name => 'status', traits => ['NameInRequest']);
  has VirtualRouterName => (is => 'ro', isa => 'Str', request_name => 'virtualRouterName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., VirtualRouterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object representing a route returned by a describe operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh in which the route resides.


=head2 Metadata => L<Paws::AppMesh::ResourceMetadata>

  The associated metadata for the route.


=head2 B<REQUIRED> RouteName => Str

  The name of the route.


=head2 Spec => L<Paws::AppMesh::RouteSpec>

  The specifications of the route.


=head2 Status => L<Paws::AppMesh::RouteStatus>

  The status of the route.


=head2 B<REQUIRED> VirtualRouterName => Str

  The virtual router with which the route is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

