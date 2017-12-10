
package Paws::DirectConnect::VirtualInterface;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addressFamily' );
  has AmazonAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amazonAddress' );
  has AmazonSideAsn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'amazonSideAsn' );
  has Asn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'asn' );
  has AuthKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authKey' );
  has BgpPeers => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::BGPPeer]', traits => ['NameInRequest'], request_name => 'bgpPeers' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has CustomerAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerAddress' );
  has CustomerRouterConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerRouterConfig' );
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has RouteFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', traits => ['NameInRequest'], request_name => 'routeFilterPrefixes' );
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceName' );
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceState' );
  has VirtualInterfaceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceType' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterface

=head1 ATTRIBUTES


=head2 AddressFamily => Str



Valid values are: C<"ipv4">, C<"ipv6">
=head2 AmazonAddress => Str




=head2 AmazonSideAsn => Int

The autonomous system number (ASN) for the Amazon side of the
connection.


=head2 Asn => Int




=head2 AuthKey => Str




=head2 BgpPeers => ArrayRef[L<Paws::DirectConnect::BGPPeer>]




=head2 ConnectionId => Str




=head2 CustomerAddress => Str




=head2 CustomerRouterConfig => Str

Information for generating the customer router configuration.


=head2 DirectConnectGatewayId => Str




=head2 Location => Str




=head2 OwnerAccount => Str

The AWS account that will own the new virtual interface.


=head2 RouteFilterPrefixes => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]




=head2 VirtualGatewayId => Str




=head2 VirtualInterfaceId => Str




=head2 VirtualInterfaceName => Str




=head2 VirtualInterfaceState => Str



Valid values are: C<"confirming">, C<"verifying">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">
=head2 VirtualInterfaceType => Str




=head2 Vlan => Int




=head2 _request_id => Str


=cut

1;