
package Paws::AppMesh::DescribeVirtualNode;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has VirtualNodeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualNodeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualNodes/{virtualNodeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DescribeVirtualNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualNode - Arguments for method DescribeVirtualNode on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVirtualNode on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeVirtualNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVirtualNode.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeVirtualNodeOutput = $appmesh->DescribeVirtualNode(
      MeshName        => 'MyResourceName',
      VirtualNodeName => 'MyResourceName',

    );

    # Results:
    my $VirtualNode = $DescribeVirtualNodeOutput->VirtualNode;

    # Returns a L<Paws::AppMesh::DescribeVirtualNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeVirtualNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which the virtual node resides.



=head2 B<REQUIRED> VirtualNodeName => Str

The name of the virtual node to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVirtualNode in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

