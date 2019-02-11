package Paws::EC2::ClientVpnEndpoint;
  use Moose;
  has AssociatedTargetNetworks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AssociatedTargetNetwork]', request_name => 'associatedTargetNetwork', traits => ['NameInRequest']);
  has AuthenticationOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClientVpnAuthentication]', request_name => 'authenticationOptions', traits => ['NameInRequest']);
  has ClientCidrBlock => (is => 'ro', isa => 'Str', request_name => 'clientCidrBlock', traits => ['NameInRequest']);
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest']);
  has ConnectionLogOptions => (is => 'ro', isa => 'Paws::EC2::ConnectionLogResponseOptions', request_name => 'connectionLogOptions', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeletionTime => (is => 'ro', isa => 'Str', request_name => 'deletionTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest']);
  has ServerCertificateArn => (is => 'ro', isa => 'Str', request_name => 'serverCertificateArn', traits => ['NameInRequest']);
  has SplitTunnel => (is => 'ro', isa => 'Bool', request_name => 'splitTunnel', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnEndpointStatus', request_name => 'status', traits => ['NameInRequest']);
  has TransportProtocol => (is => 'ro', isa => 'Str', request_name => 'transportProtocol', traits => ['NameInRequest']);
  has VpnProtocol => (is => 'ro', isa => 'Str', request_name => 'vpnProtocol', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnEndpoint object:

  $service_obj->Method(Att1 => { AssociatedTargetNetworks => $value, ..., VpnProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedTargetNetworks

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatedTargetNetworks => ArrayRef[L<Paws::EC2::AssociatedTargetNetwork>]

  Information about the associated target networks. A target network is a
subnet in a VPC.


=head2 AuthenticationOptions => ArrayRef[L<Paws::EC2::ClientVpnAuthentication>]

  Information about the authentication method used by the Client VPN
endpoint.


=head2 ClientCidrBlock => Str

  The IPv4 address range, in CIDR notation, from which client IP
addresses are assigned.


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint.


=head2 ConnectionLogOptions => L<Paws::EC2::ConnectionLogResponseOptions>

  Information about the client connection logging options for the Client
VPN endpoint.


=head2 CreationTime => Str

  The date and time the Client VPN endpoint was created.


=head2 DeletionTime => Str

  The date and time the Client VPN endpoint was deleted, if applicable.
Information about deleted Client VPN endpoints is retained for 24
hours, unless a new Client VPN is created with the same name.


=head2 Description => Str

  A brief description of the endpoint.


=head2 DnsName => Str

  The DNS name to be used by clients when establishing a connection.


=head2 ServerCertificateArn => Str

  The ARN of the server certificate.


=head2 SplitTunnel => Bool

  B<Indicates whether VPN split tunneling is supported.>


=head2 Status => L<Paws::EC2::ClientVpnEndpointStatus>

  The current state of the Client VPN endpoint.


=head2 TransportProtocol => Str

  B<The transport protocol used by the Client VPN endpoint.>


=head2 VpnProtocol => Str

  The protocol used by the VPN session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
