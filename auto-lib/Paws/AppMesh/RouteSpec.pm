# Generated from default/object.tt
package Paws::AppMesh::RouteSpec;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::AppMesh::Types qw/AppMesh_HttpRoute AppMesh_GrpcRoute AppMesh_TcpRoute/;
  has GrpcRoute => (is => 'ro', isa => AppMesh_GrpcRoute);
  has Http2Route => (is => 'ro', isa => AppMesh_HttpRoute);
  has HttpRoute => (is => 'ro', isa => AppMesh_HttpRoute);
  has Priority => (is => 'ro', isa => Int);
  has TcpRoute => (is => 'ro', isa => AppMesh_TcpRoute);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Priority' => 'priority',
                       'TcpRoute' => 'tcpRoute',
                       'Http2Route' => 'http2Route',
                       'GrpcRoute' => 'grpcRoute',
                       'HttpRoute' => 'httpRoute'
                     },
  'types' => {
               'Http2Route' => {
                                 'class' => 'Paws::AppMesh::HttpRoute',
                                 'type' => 'AppMesh_HttpRoute'
                               },
               'GrpcRoute' => {
                                'class' => 'Paws::AppMesh::GrpcRoute',
                                'type' => 'AppMesh_GrpcRoute'
                              },
               'HttpRoute' => {
                                'type' => 'AppMesh_HttpRoute',
                                'class' => 'Paws::AppMesh::HttpRoute'
                              },
               'Priority' => {
                               'type' => 'Int'
                             },
               'TcpRoute' => {
                               'type' => 'AppMesh_TcpRoute',
                               'class' => 'Paws::AppMesh::TcpRoute'
                             }
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

  $service_obj->Method(Att1 => { GrpcRoute => $value, ..., TcpRoute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::RouteSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->GrpcRoute

=head1 DESCRIPTION

An object that represents a route specification. Specify one route
type.

=head1 ATTRIBUTES


=head2 GrpcRoute => AppMesh_GrpcRoute

  An object that represents the specification of a GRPC route.


=head2 Http2Route => AppMesh_HttpRoute

  An object that represents the specification of an HTTP2 route.


=head2 HttpRoute => AppMesh_HttpRoute

  An object that represents the specification of an HTTP route.


=head2 Priority => Int

  The priority for the route. Routes are matched based on the specified
value, where 0 is the highest priority.


=head2 TcpRoute => AppMesh_TcpRoute

  An object that represents the specification of a TCP route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

