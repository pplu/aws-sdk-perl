
package Paws::AppMesh::DeleteVirtualRouter;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualRouters/{virtualRouterName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DeleteVirtualRouterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualRouter - Arguments for method DeleteVirtualRouter on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVirtualRouter on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DeleteVirtualRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVirtualRouter.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DeleteVirtualRouterOutput = $appmesh->DeleteVirtualRouter(
      MeshName          => 'MyResourceName',
      VirtualRouterName => 'MyResourceName',

    );

    # Results:
    my $VirtualRouter = $DeleteVirtualRouterOutput->VirtualRouter;

    # Returns a L<Paws::AppMesh::DeleteVirtualRouterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DeleteVirtualRouter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to delete the virtual router.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVirtualRouter in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

