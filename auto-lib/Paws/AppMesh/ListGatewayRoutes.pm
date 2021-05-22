
package Paws::AppMesh::ListGatewayRoutes;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has VirtualGatewayName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualGatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGatewayRoutes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::ListGatewayRoutesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListGatewayRoutes - Arguments for method ListGatewayRoutes on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGatewayRoutes on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method ListGatewayRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGatewayRoutes.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $ListGatewayRoutesOutput = $appmesh->ListGatewayRoutes(
      MeshName           => 'MyResourceName',
      VirtualGatewayName => 'MyResourceName',
      Limit              => 1,                  # OPTIONAL
      MeshOwner          => 'MyAccountId',      # OPTIONAL
      NextToken          => 'MyString',         # OPTIONAL
    );

    # Results:
    my $GatewayRoutes = $ListGatewayRoutesOutput->GatewayRoutes;
    my $NextToken     = $ListGatewayRoutesOutput->NextToken;

    # Returns a L<Paws::AppMesh::ListGatewayRoutesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/ListGatewayRoutes>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of results returned by C<ListGatewayRoutes> in
paginated output. When you use this parameter, C<ListGatewayRoutes>
returns only C<limit> results in a single page along with a
C<nextToken> response element. You can see the remaining results of the
initial request by sending another C<ListGatewayRoutes> request with
the returned C<nextToken> value. This value can be between 1 and 100.
If you don't use this parameter, C<ListGatewayRoutes> returns up to 100
results and a C<nextToken> value if applicable.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to list gateway routes in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see Working with
shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListGatewayRoutes> request where C<limit> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.



=head2 B<REQUIRED> VirtualGatewayName => Str

The name of the virtual gateway to list gateway routes in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGatewayRoutes in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

