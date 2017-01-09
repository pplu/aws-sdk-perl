
package Paws::DirectConnect::VirtualInterface;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'addressFamily' );
  has AmazonAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'amazonAddress' );
  has Asn => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'asn' );
  has AuthKey => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'authKey' );
  has BgpPeers => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::BGPPeer]', traits => ['Unwrapped'], xmlname => 'bgpPeers' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionId' );
  has CustomerAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerAddress' );
  has CustomerRouterConfig => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerRouterConfig' );
  has Location => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'location' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAccount' );
  has RouteFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', traits => ['Unwrapped'], xmlname => 'routeFilterPrefixes' );
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualGatewayId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualInterfaceId' );
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualInterfaceName' );
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualInterfaceState' );
  has VirtualInterfaceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualInterfaceType' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'vlan' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterface

=head1 ATTRIBUTES


=head2 AddressFamily => Str



Valid values are: C<"ipv4">, C<"ipv6">
=head2 AmazonAddress => Str




=head2 Asn => Int




=head2 AuthKey => Str




=head2 BgpPeers => ArrayRef[L<Paws::DirectConnect::BGPPeer>]




=head2 ConnectionId => Str




=head2 CustomerAddress => Str




=head2 CustomerRouterConfig => Str

Information for generating the customer router configuration.


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