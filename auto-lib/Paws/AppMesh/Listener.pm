# Generated by default/object.tt
package Paws::AppMesh::Listener;
  use Moose;
  has ConnectionPool => (is => 'ro', isa => 'Paws::AppMesh::VirtualNodeConnectionPool', request_name => 'connectionPool', traits => ['NameInRequest']);
  has HealthCheck => (is => 'ro', isa => 'Paws::AppMesh::HealthCheckPolicy', request_name => 'healthCheck', traits => ['NameInRequest']);
  has OutlierDetection => (is => 'ro', isa => 'Paws::AppMesh::OutlierDetection', request_name => 'outlierDetection', traits => ['NameInRequest']);
  has PortMapping => (is => 'ro', isa => 'Paws::AppMesh::PortMapping', request_name => 'portMapping', traits => ['NameInRequest'], required => 1);
  has Timeout => (is => 'ro', isa => 'Paws::AppMesh::ListenerTimeout', request_name => 'timeout', traits => ['NameInRequest']);
  has Tls => (is => 'ro', isa => 'Paws::AppMesh::ListenerTls', request_name => 'tls', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::Listener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::Listener object:

  $service_obj->Method(Att1 => { ConnectionPool => $value, ..., Tls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::Listener object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionPool

=head1 DESCRIPTION

An object that represents a listener for a virtual node.

=head1 ATTRIBUTES


=head2 ConnectionPool => L<Paws::AppMesh::VirtualNodeConnectionPool>

The connection pool information for the listener.


=head2 HealthCheck => L<Paws::AppMesh::HealthCheckPolicy>

The health check information for the listener.


=head2 OutlierDetection => L<Paws::AppMesh::OutlierDetection>

The outlier detection information for the listener.


=head2 B<REQUIRED> PortMapping => L<Paws::AppMesh::PortMapping>

The port mapping information for the listener.


=head2 Timeout => L<Paws::AppMesh::ListenerTimeout>

An object that represents timeouts for different protocols.


=head2 Tls => L<Paws::AppMesh::ListenerTls>

A reference to an object that represents the Transport Layer Security
(TLS) properties for a listener.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

