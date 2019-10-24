# Generated from default/object.tt
package Paws::AppMesh::RouteSpec;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_TcpRoute AppMesh_HttpRoute/;
  has HttpRoute => (is => 'ro', isa => AppMesh_HttpRoute);
  has TcpRoute => (is => 'ro', isa => AppMesh_TcpRoute);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TcpRoute' => {
                               'class' => 'Paws::AppMesh::TcpRoute',
                               'type' => 'AppMesh_TcpRoute'
                             },
               'HttpRoute' => {
                                'class' => 'Paws::AppMesh::HttpRoute',
                                'type' => 'AppMesh_HttpRoute'
                              }
             },
  'NameInRequest' => {
                       'TcpRoute' => 'tcpRoute',
                       'HttpRoute' => 'httpRoute'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::RouteSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::RouteSpec object:

  $service_obj->Method(Att1 => { HttpRoute => $value, ..., TcpRoute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpRoute

=head1 DESCRIPTION

An object representing the specification of a route.

=head1 ATTRIBUTES


=head2 HttpRoute => AppMesh_HttpRoute

  The HTTP routing information for the route.


=head2 TcpRoute => AppMesh_TcpRoute

  The TCP routing information for the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

