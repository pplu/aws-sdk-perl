# Generated by default/object.tt
package Paws::AppMesh::VirtualGatewayHttpConnectionPool;
  use Moose;
  has MaxConnections => (is => 'ro', isa => 'Int', request_name => 'maxConnections', traits => ['NameInRequest'], required => 1);
  has MaxPendingRequests => (is => 'ro', isa => 'Int', request_name => 'maxPendingRequests', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualGatewayHttpConnectionPool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualGatewayHttpConnectionPool object:

  $service_obj->Method(Att1 => { MaxConnections => $value, ..., MaxPendingRequests => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualGatewayHttpConnectionPool object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxConnections

=head1 DESCRIPTION

An object that represents a type of connection pool.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxConnections => Int

Maximum number of outbound TCP connections Envoy can establish
concurrently with all hosts in upstream cluster.


=head2 MaxPendingRequests => Int

Number of overflowing requests after C<max_connections> Envoy will
queue to upstream cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

