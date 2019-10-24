# Generated from default/object.tt
package Paws::AppMesh::RouteRef;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has RouteName => (is => 'ro', isa => Str, required => 1);
  has VirtualRouterName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RouteName' => {
                                'type' => 'Str'
                              },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'VirtualRouterName' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'RouteName' => 'routeName',
                       'MeshName' => 'meshName',
                       'Arn' => 'arn',
                       'VirtualRouterName' => 'virtualRouterName'
                     },
  'IsRequired' => {
                    'RouteName' => 1,
                    'MeshName' => 1,
                    'Arn' => 1,
                    'VirtualRouterName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteRef

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteRef object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VirtualRouterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteRef object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object representing a route returned by a list operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The full Amazon Resource Name (ARN) for the route.


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the route resides in.


=head2 B<REQUIRED> RouteName => Str

  The name of the route.


=head2 B<REQUIRED> VirtualRouterName => Str

  The virtual router that the route is associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

