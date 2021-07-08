
package Paws::AppMesh::DeleteVirtualGateway;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has VirtualGatewayName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualGatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DeleteVirtualGatewayOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualGateway - Arguments for method DeleteVirtualGateway on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVirtualGateway on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DeleteVirtualGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVirtualGateway.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DeleteVirtualGatewayOutput = $appmesh->DeleteVirtualGateway(
      MeshName           => 'MyResourceName',
      VirtualGatewayName => 'MyResourceName',
      MeshOwner          => 'MyAccountId',      # OPTIONAL
    );

    # Results:
    my $VirtualGateway = $DeleteVirtualGatewayOutput->VirtualGateway;

    # Returns a L<Paws::AppMesh::DeleteVirtualGatewayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DeleteVirtualGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to delete the virtual gateway from.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see Working with
shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> VirtualGatewayName => Str

The name of the virtual gateway to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVirtualGateway in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

