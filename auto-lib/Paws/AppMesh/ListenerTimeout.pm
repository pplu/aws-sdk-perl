# Generated by default/object.tt
package Paws::AppMesh::ListenerTimeout;
  use Moose;
  has Grpc => (is => 'ro', isa => 'Paws::AppMesh::GrpcTimeout', request_name => 'grpc', traits => ['NameInRequest']);
  has Http => (is => 'ro', isa => 'Paws::AppMesh::HttpTimeout', request_name => 'http', traits => ['NameInRequest']);
  has Http2 => (is => 'ro', isa => 'Paws::AppMesh::HttpTimeout', request_name => 'http2', traits => ['NameInRequest']);
  has Tcp => (is => 'ro', isa => 'Paws::AppMesh::TcpTimeout', request_name => 'tcp', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListenerTimeout

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::ListenerTimeout object:

  $service_obj->Method(Att1 => { Grpc => $value, ..., Tcp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::ListenerTimeout object:

  $result = $service_obj->Method(...);
  $result->Att1->Grpc

=head1 DESCRIPTION

An object that represents timeouts for different protocols.

=head1 ATTRIBUTES


=head2 Grpc => L<Paws::AppMesh::GrpcTimeout>

An object that represents types of timeouts.


=head2 Http => L<Paws::AppMesh::HttpTimeout>

An object that represents types of timeouts.


=head2 Http2 => L<Paws::AppMesh::HttpTimeout>

An object that represents types of timeouts.


=head2 Tcp => L<Paws::AppMesh::TcpTimeout>

An object that represents types of timeouts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

