package Paws::EC2::VpnConnection;
  use Moose;
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str', xmlname => 'customerGatewayConfiguration', traits => ['Unwrapped']);
  has CustomerGatewayId => (is => 'ro', isa => 'Str', xmlname => 'customerGatewayId', traits => ['Unwrapped']);
  has Options => (is => 'ro', isa => 'Paws::EC2::VpnConnectionOptions', xmlname => 'options', traits => ['Unwrapped']);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnStaticRoute]', xmlname => 'routes', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', traits => ['Unwrapped']);
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VgwTelemetry]', xmlname => 'vgwTelemetry', traits => ['Unwrapped']);
  has VpnConnectionId => (is => 'ro', isa => 'Str', xmlname => 'vpnConnectionId', traits => ['Unwrapped']);
  has VpnGatewayId => (is => 'ro', isa => 'Str', xmlname => 'vpnGatewayId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnConnection

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnConnection object:

  $service_obj->Method(Att1 => { CustomerGatewayConfiguration => $value, ..., VpnGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerGatewayConfiguration

=head1 ATTRIBUTES

=head2 CustomerGatewayConfiguration => Str

  The configuration information for the VPN connection's customer gateway
(in the native XML format). This element is always present in the
CreateVpnConnection response; however, it's present in the
DescribeVpnConnections response only if the VPN connection is in the
C<pending> or C<available> state.

=head2 CustomerGatewayId => Str

  The ID of the customer gateway at your end of the VPN connection.

=head2 Options => Paws::EC2::VpnConnectionOptions

  The VPN connection options.

=head2 Routes => ArrayRef[Paws::EC2::VpnStaticRoute]

  The static routes associated with the VPN connection.

=head2 State => Str

  The current state of the VPN connection.

=head2 Tags => ArrayRef[Paws::EC2::Tag]

  Any tags assigned to the VPN connection.

=head2 Type => Str

  The type of VPN connection.

=head2 VgwTelemetry => ArrayRef[Paws::EC2::VgwTelemetry]

  Information about the VPN tunnel.

=head2 VpnConnectionId => Str

  The ID of the VPN connection.

=head2 VpnGatewayId => Str

  The ID of the virtual private gateway at the AWS side of the VPN
connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
