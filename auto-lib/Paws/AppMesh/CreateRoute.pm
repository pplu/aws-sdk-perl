
package Paws::AppMesh::CreateRoute;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_RouteSpec AppMesh_TagRef/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Spec => (is => 'ro', isa => AppMesh_RouteSpec, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[AppMesh_TagRef], predicate => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateRoute');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::CreateRouteOutput');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'VirtualRouterName' => 'virtualRouterName',
                    'MeshName' => 'meshName'
                  },
  'types' => {
               'Spec' => {
                           'type' => 'AppMesh_RouteSpec',
                           'class' => 'Paws::AppMesh::RouteSpec'
                         },
               'Tags' => {
                           'class' => 'Paws::AppMesh::TagRef',
                           'type' => 'ArrayRef[AppMesh_TagRef]'
                         },
               'VirtualRouterName' => {
                                        'type' => 'Str'
                                      },
               'RouteName' => {
                                'type' => 'Str'
                              },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'ClientToken' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'MeshName' => 1,
                    'Spec' => 1,
                    'RouteName' => 1,
                    'VirtualRouterName' => 1
                  },
  'NameInRequest' => {
                       'RouteName' => 'routeName',
                       'Tags' => 'tags',
                       'Spec' => 'spec',
                       'ClientToken' => 'clientToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateRoute - Arguments for method CreateRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateRouteOutput = $appmesh->CreateRoute(
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
            ],                                      # min: 1, max: 10

          },
          Match => {
            Metadata => [
              {
                Name   => 'MyHeaderName',           # min: 1, max: 50
                Invert => 1,                        # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                                # OPTIONAL
                  Regex  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # min: 1, max: 10; OPTIONAL
            MethodName  => 'MyMethodName',     # min: 1, max: 50; OPTIONAL
            ServiceName => 'MyServiceName',    # OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 'ms',                   # values: ms, s; OPTIONAL
              Value => 1,                      # OPTIONAL
            },
            GrpcRetryEvents => [
              'cancelled',
              ... # values: cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
            ],    # min: 1, max: 5; OPTIONAL
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],                                 # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...          # values: connection-error
            ],                                 # min: 1, max: 1; OPTIONAL
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
            ],                                      # min: 1, max: 10

          },
          Match => {
            Prefix  => 'MyString',
            Headers => [
              {
                Name   => 'MyHeaderName',           # min: 1, max: 50
                Invert => 1,                        # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                                # OPTIONAL
                  Regex  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # min: 1, max: 10; OPTIONAL
            Method => 'CONNECT'
            , # values: CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE; OPTIONAL
            Scheme => 'http',    # values: http, https; OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 'ms',     # values: ms, s; OPTIONAL
              Value => 1,        # OPTIONAL
            },
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],                                 # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...          # values: connection-error
            ],                                 # min: 1, max: 1; OPTIONAL
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
            ],                                      # min: 1, max: 10

          },
          Match => {
            Prefix  => 'MyString',
            Headers => [
              {
                Name   => 'MyHeaderName',           # min: 1, max: 50
                Invert => 1,                        # OPTIONAL
                Match  => {
                  Exact  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Prefix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Range  => {
                    End   => 1,
                    Start => 1,

                  },                                # OPTIONAL
                  Regex  => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                  Suffix => 'MyHeaderMatch',        # min: 1, max: 255; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # min: 1, max: 10; OPTIONAL
            Method => 'CONNECT'
            , # values: CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE; OPTIONAL
            Scheme => 'http',    # values: http, https; OPTIONAL
          },
          RetryPolicy => {
            MaxRetries      => 1,
            PerRetryTimeout => {
              Unit  => 'ms',     # values: ms, s; OPTIONAL
              Value => 1,        # OPTIONAL
            },
            HttpRetryEvents => [
              'MyHttpRetryPolicyEvent', ...    # min: 1, max: 25
            ],                                 # min: 1, max: 25; OPTIONAL
            TcpRetryEvents => [
              'connection-error', ...          # values: connection-error
            ],                                 # min: 1, max: 1; OPTIONAL
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
            ],                                      # min: 1, max: 10

          },

        },    # OPTIONAL
      },
      VirtualRouterName => 'MyResourceName',
      ClientToken       => 'MyString',         # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # max: 256; OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $Route = $CreateRouteOutput->Route;

    # Returns a L<Paws::AppMesh::CreateRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateRoute>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to create the route in.



=head2 B<REQUIRED> RouteName => Str

The name to use for the route.



=head2 B<REQUIRED> Spec => AppMesh_RouteSpec

The route specification to apply.



=head2 Tags => ArrayRef[AppMesh_TagRef]

Optional metadata that you can apply to the route to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router in which to create the route.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

