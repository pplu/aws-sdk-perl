
package Paws::AppMesh::UpdateRoute;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has RouteName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::RouteSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::UpdateRouteOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateRoute - Arguments for method UpdateRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method UpdateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $UpdateRouteOutput = $appmesh->UpdateRoute(
      MeshName  => 'MyResourceName',
      RouteName => 'MyResourceName',
      Spec      => {
        GrpcRoute => {
          Action => {
            WeightedTargets => [
              {
                VirtualNode => 'MyResourceName',    # min: 1, max: 255
                Weight      => 1,                   # max: 100

              },
              ...
            ],    # min: 1, max: 10

          },
          Match => {
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
            MethodName  => 'MyMethodName',     # min: 1, max: 50; OPTIONAL
            ServiceName => 'MyServiceName',    # OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            GrpcRetryEvents => [
              'cancelled',
              ... # values: cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
            ],    # min: 1, max: 5; OPTIONAL
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],    # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...    # values: connection-error
            ],    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          Timeout => {
            Idle => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            PerRequest => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        Http2Route => {
          Action => {
            WeightedTargets => [
              {
                VirtualNode => 'MyResourceName',    # min: 1, max: 255
                Weight      => 1,                   # max: 100

              },
              ...
            ],    # min: 1, max: 10

          },
          Match => {
            Prefix  => 'MyString',
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
            Method => 'GET'
            , # values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH; OPTIONAL
            Scheme => 'http',    # values: http, https; OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],    # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...    # values: connection-error
            ],    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          Timeout => {
            Idle => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            PerRequest => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        HttpRoute => {
          Action => {
            WeightedTargets => [
              {
                VirtualNode => 'MyResourceName',    # min: 1, max: 255
                Weight      => 1,                   # max: 100

              },
              ...
            ],    # min: 1, max: 10

          },
          Match => {
            Prefix  => 'MyString',
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
            Method => 'GET'
            , # values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH; OPTIONAL
            Scheme => 'http',    # values: http, https; OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],    # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...    # values: connection-error
            ],    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
          Timeout => {
            Idle => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
            PerRequest => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        Priority => 1,    # max: 1000; OPTIONAL
        TcpRoute => {
          Action => {
            WeightedTargets => [
              {
                VirtualNode => 'MyResourceName',    # min: 1, max: 255
                Weight      => 1,                   # max: 100

              },
              ...
            ],    # min: 1, max: 10

          },
          Timeout => {
            Idle => {
              Unit  => 's',    # values: s, ms; OPTIONAL
              Value => 1,      # OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
      },
      VirtualRouterName => 'MyResourceName',
      ClientToken       => 'MyString',         # OPTIONAL
      MeshOwner         => 'MyAccountId',      # OPTIONAL
    );

    # Results:
    my $Route = $UpdateRouteOutput->Route;

    # Returns a L<Paws::AppMesh::UpdateRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/UpdateRoute>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the route resides in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see Working with
shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> RouteName => Str

The name of the route to update.



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::RouteSpec>

The new route specification to apply. This overwrites the existing
data.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router that the route is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

