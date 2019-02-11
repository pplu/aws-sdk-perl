
package Paws::AppMesh::DeleteVirtualNode;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has VirtualNodeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualNodeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualNodes/{virtualNodeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DeleteVirtualNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualNode - Arguments for method DeleteVirtualNode on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVirtualNode on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DeleteVirtualNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVirtualNode.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DeleteVirtualNodeOutput = $appmesh->DeleteVirtualNode(
      MeshName        => 'MyResourceName',
      VirtualNodeName => 'MyResourceName',

    );

    # Results:
    my $VirtualNode = $DeleteVirtualNodeOutput->VirtualNode;

    # Returns a L<Paws::AppMesh::DeleteVirtualNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DeleteVirtualNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to delete the virtual node.



=head2 B<REQUIRED> VirtualNodeName => Str

The name of the virtual node to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVirtualNode in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

