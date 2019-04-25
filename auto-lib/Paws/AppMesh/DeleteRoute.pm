
package Paws::AppMesh::DeleteRoute;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has RouteName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeName', required => 1);
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DeleteRouteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteRoute - Arguments for method DeleteRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DeleteRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DeleteRouteOutput = $appmesh->DeleteRoute(
      MeshName          => 'MyResourceName',
      RouteName         => 'MyResourceName',
      VirtualRouterName => 'MyResourceName',

    );

    # Results:
    my $Route = $DeleteRouteOutput->Route;

    # Returns a L<Paws::AppMesh::DeleteRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DeleteRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to delete the route.



=head2 B<REQUIRED> RouteName => Str

The name of the route to delete.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router in which to delete the route.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

