
package Paws::AppMesh::UpdateRoute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_RouteSpec/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Spec => (is => 'ro', isa => AppMesh_RouteSpec, required => 1, predicate => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRoute');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::UpdateRouteOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::AppMesh::RouteSpec',
                           'type' => 'AppMesh_RouteSpec'
                         },
               'RouteName' => {
                                'type' => 'Str'
                              },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'VirtualRouterName' => {
                                        'type' => 'Str'
                                      }
             },
  'ParamInURI' => {
                    'RouteName' => 'routeName',
                    'MeshName' => 'meshName',
                    'VirtualRouterName' => 'virtualRouterName'
                  },
  'NameInRequest' => {
                       'Spec' => 'spec',
                       'ClientToken' => 'clientToken'
                     },
  'IsRequired' => {
                    'Spec' => 1,
                    'RouteName' => 1,
                    'MeshName' => 1,
                    'VirtualRouterName' => 1
                  }
}
;
    return $Params_map;
  }

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
            Prefix => 'MyString',

          },

        },    # OPTIONAL
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



=head2 B<REQUIRED> RouteName => Str

The name of the route to update.



=head2 B<REQUIRED> Spec => AppMesh_RouteSpec

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

