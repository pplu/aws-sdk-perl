# Generated from default/object.tt
package Paws::AppMesh::RouteData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_ResourceMetadata AppMesh_RouteStatus AppMesh_RouteSpec/;
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has Metadata => (is => 'ro', isa => AppMesh_ResourceMetadata, required => 1);
  has RouteName => (is => 'ro', isa => Str, required => 1);
  has Spec => (is => 'ro', isa => AppMesh_RouteSpec, required => 1);
  has Status => (is => 'ro', isa => AppMesh_RouteStatus, required => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'type' => 'AppMesh_RouteSpec',
                           'class' => 'Paws::AppMesh::RouteSpec'
                         },
               'Status' => {
                             'type' => 'AppMesh_RouteStatus',
                             'class' => 'Paws::AppMesh::RouteStatus'
                           },
               'VirtualRouterName' => {
                                        'type' => 'Str'
                                      },
               'Metadata' => {
                               'type' => 'AppMesh_ResourceMetadata',
                               'class' => 'Paws::AppMesh::ResourceMetadata'
                             },
               'RouteName' => {
                                'type' => 'Str'
                              },
               'MeshName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'MeshName' => 1,
                    'Spec' => 1,
                    'Status' => 1,
                    'RouteName' => 1,
                    'Metadata' => 1,
                    'VirtualRouterName' => 1
                  },
  'NameInRequest' => {
                       'MeshName' => 'meshName',
                       'Status' => 'status',
                       'Spec' => 'spec',
                       'RouteName' => 'routeName',
                       'Metadata' => 'metadata',
                       'VirtualRouterName' => 'virtualRouterName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteData object:

  $service_obj->Method(Att1 => { MeshName => $value, ..., VirtualRouterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteData object:

  $result = $service_obj->Method(...);
  $result->Att1->MeshName

=head1 DESCRIPTION

An object that represents a route returned by a describe operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the route resides in.


=head2 B<REQUIRED> Metadata => AppMesh_ResourceMetadata

  The associated metadata for the route.


=head2 B<REQUIRED> RouteName => Str

  The name of the route.


=head2 B<REQUIRED> Spec => AppMesh_RouteSpec

  The specifications of the route.


=head2 B<REQUIRED> Status => AppMesh_RouteStatus

  The status of the route.


=head2 B<REQUIRED> VirtualRouterName => Str

  The virtual router that the route is associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

