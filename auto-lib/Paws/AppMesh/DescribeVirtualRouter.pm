
package Paws::AppMesh::DescribeVirtualRouter;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualRouters/{virtualRouterName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DescribeVirtualRouterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualRouter - Arguments for method DescribeVirtualRouter on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVirtualRouter on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeVirtualRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVirtualRouter.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeVirtualRouterOutput = $appmesh->DescribeVirtualRouter(
      MeshName          => 'MyResourceName',
      VirtualRouterName => 'MyResourceName',

    );

    # Results:
    my $VirtualRouter = $DescribeVirtualRouterOutput->VirtualRouter;

    # Returns a L<Paws::AppMesh::DescribeVirtualRouterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeVirtualRouter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which the virtual router resides.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVirtualRouter in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

