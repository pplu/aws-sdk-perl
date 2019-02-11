package Paws::EC2::ClientVpnConnection;
  use Moose;
  has ClientIp => (is => 'ro', isa => 'Str', request_name => 'clientIp', traits => ['NameInRequest']);
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest']);
  has CommonName => (is => 'ro', isa => 'Str', request_name => 'commonName', traits => ['NameInRequest']);
  has ConnectionEndTime => (is => 'ro', isa => 'Str', request_name => 'connectionEndTime', traits => ['NameInRequest']);
  has ConnectionEstablishedTime => (is => 'ro', isa => 'Str', request_name => 'connectionEstablishedTime', traits => ['NameInRequest']);
  has ConnectionId => (is => 'ro', isa => 'Str', request_name => 'connectionId', traits => ['NameInRequest']);
  has EgressBytes => (is => 'ro', isa => 'Str', request_name => 'egressBytes', traits => ['NameInRequest']);
  has EgressPackets => (is => 'ro', isa => 'Str', request_name => 'egressPackets', traits => ['NameInRequest']);
  has IngressBytes => (is => 'ro', isa => 'Str', request_name => 'ingressBytes', traits => ['NameInRequest']);
  has IngressPackets => (is => 'ro', isa => 'Str', request_name => 'ingressPackets', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnConnectionStatus', request_name => 'status', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnConnection object:

  $service_obj->Method(Att1 => { ClientIp => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientIp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientIp => Str

  The IP address of the client.


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint to which the client is connected.


=head2 CommonName => Str

  B<The common name associated with the client. This is either the name
of the client certificate, or the Active Directory user name.>


=head2 ConnectionEndTime => Str

  The date and time the client connection was terminated.


=head2 ConnectionEstablishedTime => Str

  The date and time the client connection was established.


=head2 ConnectionId => Str

  The ID of the client connection.


=head2 EgressBytes => Str

  The number of bytes received by the client.


=head2 EgressPackets => Str

  The number of packets received by the client.


=head2 IngressBytes => Str

  The number of bytes sent by the client.


=head2 IngressPackets => Str

  The number of packets sent by the client.


=head2 Status => L<Paws::EC2::ClientVpnConnectionStatus>

  The current state of the client connection.


=head2 Timestamp => Str

  B<The current date and time.>


=head2 Username => Str

  The username of the client who established the client connection. This
information is only provided if Active Directory client authentication
is used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
