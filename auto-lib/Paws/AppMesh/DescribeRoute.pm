
package Paws::AppMesh::DescribeRoute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeRoute');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::DescribeRouteOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RouteName' => {
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
  'IsRequired' => {
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

Paws::AppMesh::DescribeRoute - Arguments for method DescribeRoute on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRoute on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRoute.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeRouteOutput = $appmesh->DescribeRoute(
      MeshName          => 'MyResourceName',
      RouteName         => 'MyResourceName',
      VirtualRouterName => 'MyResourceName',

    );

    # Results:
    my $Route = $DescribeRouteOutput->Route;

    # Returns a L<Paws::AppMesh::DescribeRouteOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the route resides in.



=head2 B<REQUIRED> RouteName => Str

The name of the route to describe.



=head2 B<REQUIRED> VirtualRouterName => Str

The name of the virtual router that the route is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRoute in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

