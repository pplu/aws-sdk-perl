
package Paws::AppMesh::CreateVirtualRouter;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualRouters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateVirtualRouterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateVirtualRouter - Arguments for method CreateVirtualRouter on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualRouter on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateVirtualRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualRouter.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateVirtualRouterOutput = $appmesh->CreateVirtualRouter(
      MeshName => 'MyResourceName',
      Spec     => {
        ServiceNames => [ 'MyServiceName', ... ],    # max: 10; OPTIONAL
      },
      VirtualRouterName => 'MyResourceName',
      ClientToken       => 'MyString',               # OPTIONAL
    );

    # Results:
    my $VirtualRouter = $CreateVirtualRouterOutput->VirtualRouter;

    # Returns a L<Paws::AppMesh::CreateVirtualRouterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateVirtualRouter>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to create the virtual router.



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::VirtualRouterSpec>

The virtual router specification to apply.



=head2 B<REQUIRED> VirtualRouterName => Str

The name to use for the virtual router.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualRouter in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

