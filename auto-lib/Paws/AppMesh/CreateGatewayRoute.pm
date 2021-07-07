
package Paws::AppMesh::CreateGatewayRoute;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has GatewayRouteName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayRouteName', required => 1);
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::TagRef]', traits => ['NameInRequest'], request_name => 'tags');
  has VirtualGatewayName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualGatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGatewayRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateGatewayRouteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateGatewayRoute - Arguments for method CreateGatewayRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGatewayRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateGatewayRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGatewayRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateGatewayRouteOutput = $appmesh->CreateGatewayRoute(
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
            Rewrite => {
              Hostname => {
                DefaultTargetHostname =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          Match => {
            Hostname => {
              Exact  => 'MyExactHostName',     # min: 1, max: 253; OPTIONAL
              Suffix => 'MySuffixHostname',    # min: 1, max: 253; OPTIONAL
            },    # OPTIONAL
            Metadata => [
              {
                Name   => 'MyHeaderName',    # min: 1, max: 50
                Invert => 1,                 # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                            # OPTIONAL
                  Regex  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            ServiceName => 'MyServiceName',    # OPTIONAL
          },

        },    # OPTIONAL
        Http2Route => {
          Action => {
            Target => {
              VirtualService => {
                VirtualServiceName => 'MyResourceName',    # min: 1, max: 255

              },

            },
            Rewrite => {
              Hostname => {
                DefaultTargetHostname =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
              Path => {
                Exact => 'MyHttpPathExact',    # min: 1, max: 255; OPTIONAL
              },    # OPTIONAL
              Prefix => {
                DefaultPrefix =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                Value =>
                  'MyHttpGatewayRoutePrefix',    # min: 1, max: 255; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          Match => {
            Headers => [
              {
                Name   => 'MyHeaderName',    # min: 1, max: 50
                Invert => 1,                 # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                            # OPTIONAL
                  Regex  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            Hostname => {
              Exact  => 'MyExactHostName',     # min: 1, max: 253; OPTIONAL
              Suffix => 'MySuffixHostname',    # min: 1, max: 253; OPTIONAL
            },    # OPTIONAL
            Method => 'GET'
            , # values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH; OPTIONAL
            Path => {
              Exact => 'MyHttpPathExact',    # min: 1, max: 255; OPTIONAL
              Regex => 'MyHttpPathRegex',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            Prefix          => 'MyString',    # OPTIONAL
            QueryParameters => [
              {
                Name  => 'MyQueryParameterName',
                Match => {
                  Exact => 'MyString',    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },

        },    # OPTIONAL
        HttpRoute => {
          Action => {
            Target => {
              VirtualService => {
                VirtualServiceName => 'MyResourceName',    # min: 1, max: 255

              },

            },
            Rewrite => {
              Hostname => {
                DefaultTargetHostname =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
              Path => {
                Exact => 'MyHttpPathExact',    # min: 1, max: 255; OPTIONAL
              },    # OPTIONAL
              Prefix => {
                DefaultPrefix =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                Value =>
                  'MyHttpGatewayRoutePrefix',    # min: 1, max: 255; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          Match => {
            Headers => [
              {
                Name   => 'MyHeaderName',    # min: 1, max: 50
                Invert => 1,                 # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                            # OPTIONAL
                  Regex  => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',    # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            Hostname => {
              Exact  => 'MyExactHostName',     # min: 1, max: 253; OPTIONAL
              Suffix => 'MySuffixHostname',    # min: 1, max: 253; OPTIONAL
            },    # OPTIONAL
            Method => 'GET'
            , # values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH; OPTIONAL
            Path => {
              Exact => 'MyHttpPathExact',    # min: 1, max: 255; OPTIONAL
              Regex => 'MyHttpPathRegex',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
            Prefix          => 'MyString',    # OPTIONAL
            QueryParameters => [
              {
                Name  => 'MyQueryParameterName',
                Match => {
                  Exact => 'MyString',    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },

        },    # OPTIONAL
        Priority => 1,    # max: 1000; OPTIONAL
      },
      VirtualGatewayName => 'MyResourceName',
      ClientToken        => 'MyString',         # OPTIONAL
      MeshOwner          => 'MyAccountId',      # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $GatewayRoute = $CreateGatewayRouteOutput->GatewayRoute;

    # Returns a L<Paws::AppMesh::CreateGatewayRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateGatewayRoute>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> GatewayRouteName => Str

The name to use for the gateway route.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to create the gateway route in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then the account that you specify must share the mesh
with your account before you can create the resource in the service
mesh. For more information about mesh sharing, see Working with shared
meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::GatewayRouteSpec>

The gateway route specification to apply.



=head2 Tags => ArrayRef[L<Paws::AppMesh::TagRef>]

Optional metadata that you can apply to the gateway route to assist
with categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 B<REQUIRED> VirtualGatewayName => Str

The name of the virtual gateway to associate the gateway route with. If
the virtual gateway is in a shared mesh, then you must be the owner of
the virtual gateway resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGatewayRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

