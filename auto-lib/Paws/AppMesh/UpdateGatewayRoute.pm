
package Paws::AppMesh::UpdateGatewayRoute;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has GatewayRouteName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'gatewayRouteName', required => 1);
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has VirtualGatewayName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualGatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::UpdateGatewayRouteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateGatewayRoute - Arguments for method UpdateGatewayRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewayRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method UpdateGatewayRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewayRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $UpdateGatewayRouteOutput = $appmesh->UpdateGatewayRoute(
      GatewayRouteName => 'MyResourceName',
      MeshName         => 'MyResourceName',
      Spec             => {
        GrpcRoute => {
          Action => {
            Target => {
              VirtualService => {
                VirtualServiceName => 'MyResourceName',    # min: 1, max: 255

              },

            },

          },
          Match => {
            ServiceName => 'MyServiceName',                # OPTIONAL
          },

        },    # OPTIONAL
        Http2Route => {
          Action => {
            Target => {
              VirtualService => {
                VirtualServiceName => 'MyResourceName',    # min: 1, max: 255

              },

            },

          },
          Match => {
            Prefix => 'MyString',

          },

        },    # OPTIONAL
        HttpRoute => {
          Action => {
            Target => {
              VirtualService => {
                VirtualServiceName => 'MyResourceName',    # min: 1, max: 255

              },

            },

          },
          Match => {
            Prefix => 'MyString',

          },

        },    # OPTIONAL
      },
      VirtualGatewayName => 'MyResourceName',
      ClientToken        => 'MyString',         # OPTIONAL
      MeshOwner          => 'MyAccountId',      # OPTIONAL
    );

    # Results:
    my $GatewayRoute = $UpdateGatewayRouteOutput->GatewayRoute;

    # Returns a L<Paws::AppMesh::UpdateGatewayRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/UpdateGatewayRoute>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> GatewayRouteName => Str

The name of the gateway route to update.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the gateway route resides in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see Working with
shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::GatewayRouteSpec>

The new gateway route specification to apply. This overwrites the
existing data.



=head2 B<REQUIRED> VirtualGatewayName => Str

The name of the virtual gateway that the gateway route is associated
with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewayRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

