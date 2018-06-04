package Paws::DirectConnect;
  use Moose;
  sub service { 'directconnect' }
  sub signing_name { 'directconnect' }
  sub version { '2012-10-25' }
  sub target_prefix { 'OvertureService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AllocateConnectionOnInterconnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AllocateConnectionOnInterconnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateHostedConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AllocateHostedConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocatePrivateVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AllocatePrivateVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocatePublicVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AllocatePublicVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateConnectionWithLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AssociateConnectionWithLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateHostedConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AssociateHostedConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AssociateVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::ConfirmConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmPrivateVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::ConfirmPrivateVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmPublicVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::ConfirmPublicVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBGPPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateBGPPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectConnectGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateDirectConnectGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectConnectGatewayAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateDirectConnectGatewayAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInterconnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateInterconnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePrivateVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreatePrivateVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreatePublicVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBGPPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteBGPPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectConnectGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteDirectConnectGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectConnectGatewayAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteDirectConnectGatewayAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInterconnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteInterconnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteVirtualInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectionLoa {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeConnectionLoa', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectionsOnInterconnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeConnectionsOnInterconnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDirectConnectGatewayAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeDirectConnectGatewayAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDirectConnectGatewayAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeDirectConnectGatewayAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDirectConnectGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeDirectConnectGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostedConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeHostedConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInterconnectLoa {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeInterconnectLoa', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInterconnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeInterconnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeLags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoa {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeLoa', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeVirtualGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeVirtualInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConnectionFromLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DisassociateConnectionFromLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UpdateLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AllocateConnectionOnInterconnect AllocateHostedConnection AllocatePrivateVirtualInterface AllocatePublicVirtualInterface AssociateConnectionWithLag AssociateHostedConnection AssociateVirtualInterface ConfirmConnection ConfirmPrivateVirtualInterface ConfirmPublicVirtualInterface CreateBGPPeer CreateConnection CreateDirectConnectGateway CreateDirectConnectGatewayAssociation CreateInterconnect CreateLag CreatePrivateVirtualInterface CreatePublicVirtualInterface DeleteBGPPeer DeleteConnection DeleteDirectConnectGateway DeleteDirectConnectGatewayAssociation DeleteInterconnect DeleteLag DeleteVirtualInterface DescribeConnectionLoa DescribeConnections DescribeConnectionsOnInterconnect DescribeDirectConnectGatewayAssociations DescribeDirectConnectGatewayAttachments DescribeDirectConnectGateways DescribeHostedConnections DescribeInterconnectLoa DescribeInterconnects DescribeLags DescribeLoa DescribeLocations DescribeTags DescribeVirtualGateways DescribeVirtualInterfaces DisassociateConnectionFromLag TagResource UntagResource UpdateLag / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect - Perl Interface to AWS AWS Direct Connect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DirectConnect');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Direct Connect links your internal network to an AWS Direct Connect
location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic
cable. One end of the cable is connected to your router, the other to
an AWS Direct Connect router. With this connection in place, you can
create virtual interfaces directly to the AWS cloud (for example, to
Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage
Service (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC),
bypassing Internet service providers in your network path. An AWS
Direct Connect location provides access to AWS in the region it is
associated with, as well as access to other US regions. For example,
you can provision a single connection to any AWS Direct Connect
location in the US and use it to access public AWS services in all US
Regions and AWS GovCloud (US).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25>

=head1 METHODS

=head2 AllocateConnectionOnInterconnect

=over

=item Bandwidth => Str

=item ConnectionName => Str

=item InterconnectId => Str

=item OwnerAccount => Str

=item Vlan => Int


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocateConnectionOnInterconnect>

Returns: a L<Paws::DirectConnect::Connection> instance

Deprecated in favor of AllocateHostedConnection.

Creates a hosted connection on an interconnect.

Allocates a VLAN number and a specified amount of bandwidth for use by
a hosted connection on the given interconnect.

This is intended for use by AWS Direct Connect partners only.


=head2 AllocateHostedConnection

=over

=item Bandwidth => Str

=item ConnectionId => Str

=item ConnectionName => Str

=item OwnerAccount => Str

=item Vlan => Int


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocateHostedConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Creates a hosted connection on an interconnect or a link aggregation
group (LAG).

Allocates a VLAN number and a specified amount of bandwidth for use by
a hosted connection on the given interconnect or LAG.

This is intended for use by AWS Direct Connect partners only.


=head2 AllocatePrivateVirtualInterface

=over

=item ConnectionId => Str

=item NewPrivateVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation>

=item OwnerAccount => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocatePrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Provisions a private virtual interface to be owned by another AWS
customer.

Virtual interfaces created using this action must be confirmed by the
virtual interface owner by using the ConfirmPrivateVirtualInterface
action. Until then, the virtual interface will be in 'Confirming'
state, and will not be available for handling traffic.


=head2 AllocatePublicVirtualInterface

=over

=item ConnectionId => Str

=item NewPublicVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPublicVirtualInterfaceAllocation>

=item OwnerAccount => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocatePublicVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Provisions a public virtual interface to be owned by a different
customer.

The owner of a connection calls this function to provision a public
virtual interface which will be owned by another AWS customer.

Virtual interfaces created using this function must be confirmed by the
virtual interface owner by calling ConfirmPublicVirtualInterface. Until
this step has been completed, the virtual interface will be in
'Confirming' state, and will not be available for handling traffic.

When creating an IPv6 public virtual interface (addressFamily is
'ipv6'), the customer and amazon address fields should be left blank to
use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
supported.


=head2 AssociateConnectionWithLag

=over

=item ConnectionId => Str

=item LagId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AssociateConnectionWithLag>

Returns: a L<Paws::DirectConnect::Connection> instance

Associates an existing connection with a link aggregation group (LAG).
The connection is interrupted and re-established as a member of the LAG
(connectivity to AWS will be interrupted). The connection must be
hosted on the same AWS Direct Connect endpoint as the LAG, and its
bandwidth must match the bandwidth for the LAG. You can reassociate a
connection that's currently associated with a different LAG; however,
if removing the connection will cause the original LAG to fall below
its setting for minimum number of operational connections, the request
fails.

Any virtual interfaces that are directly associated with the connection
are automatically re-associated with the LAG. If the connection was
originally associated with a different LAG, the virtual interfaces
remain associated with the original LAG.

For interconnects, any hosted connections are automatically
re-associated with the LAG. If the interconnect was originally
associated with a different LAG, the hosted connections remain
associated with the original LAG.


=head2 AssociateHostedConnection

=over

=item ConnectionId => Str

=item ParentConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AssociateHostedConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Associates a hosted connection and its virtual interfaces with a link
aggregation group (LAG) or interconnect. If the target interconnect or
LAG has an existing hosted connection with a conflicting VLAN number or
IP address, the operation fails. This action temporarily interrupts the
hosted connection's connectivity to AWS as it is being migrated.

This is intended for use by AWS Direct Connect partners only.


=head2 AssociateVirtualInterface

=over

=item ConnectionId => Str

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AssociateVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Associates a virtual interface with a specified link aggregation group
(LAG) or connection. Connectivity to AWS is temporarily interrupted as
the virtual interface is being migrated. If the target connection or
LAG has an associated virtual interface with a conflicting VLAN number
or a conflicting IP address, the operation fails.

Virtual interfaces associated with a hosted connection cannot be
associated with a LAG; hosted connections must be migrated along with
their virtual interfaces using AssociateHostedConnection.

In order to reassociate a virtual interface to a new connection or LAG,
the requester must own either the virtual interface itself or the
connection to which the virtual interface is currently associated.
Additionally, the requester must own the connection or LAG to which the
virtual interface will be newly associated.


=head2 ConfirmConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmConnection>

Returns: a L<Paws::DirectConnect::ConfirmConnectionResponse> instance

Confirm the creation of a hosted connection on an interconnect.

Upon creation, the hosted connection is initially in the 'Ordering'
state, and will remain in this state until the owner calls
ConfirmConnection to confirm creation of the hosted connection.


=head2 ConfirmPrivateVirtualInterface

=over

=item VirtualInterfaceId => Str

=item [DirectConnectGatewayId => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmPrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse> instance

Accept ownership of a private virtual interface created by another
customer.

After the virtual interface owner calls this function, the virtual
interface will be created and attached to the given virtual private
gateway or direct connect gateway, and will be available for handling
traffic.


=head2 ConfirmPublicVirtualInterface

=over

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmPublicVirtualInterface>

Returns: a L<Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse> instance

Accept ownership of a public virtual interface created by another
customer.

After the virtual interface owner calls this function, the specified
virtual interface will be created and made available for handling
traffic.


=head2 CreateBGPPeer

=over

=item [NewBGPPeer => L<Paws::DirectConnect::NewBGPPeer>]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateBGPPeer>

Returns: a L<Paws::DirectConnect::CreateBGPPeerResponse> instance

Creates a new BGP peer on a specified virtual interface. The BGP peer
cannot be in the same address family (IPv4/IPv6) of an existing BGP
peer on the virtual interface.

You must create a BGP peer for the corresponding address family in
order to access AWS resources that also use that address family.

When creating a IPv6 BGP peer, the Amazon address and customer address
fields must be left blank. IPv6 addresses are automatically assigned
from Amazon's pool of IPv6 addresses; you cannot specify custom IPv6
addresses.

For a public virtual interface, the Autonomous System Number (ASN) must
be private or already whitelisted for the virtual interface.


=head2 CreateConnection

=over

=item Bandwidth => Str

=item ConnectionName => Str

=item Location => Str

=item [LagId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Creates a new connection between the customer network and a specific
AWS Direct Connect location.

A connection links your internal network to an AWS Direct Connect
location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic
cable. One end of the cable is connected to your router, the other to
an AWS Direct Connect router. An AWS Direct Connect location provides
access to Amazon Web Services in the region it is associated with. You
can establish connections with AWS Direct Connect locations in multiple
regions, but a connection in one region does not provide connectivity
to other regions.

To find the locations for your region, use DescribeLocations.

You can automatically add the new connection to a link aggregation
group (LAG) by specifying a LAG ID in the request. This ensures that
the new connection is allocated on the same AWS Direct Connect endpoint
that hosts the specified LAG. If there are no available ports on the
endpoint, the request fails and no connection will be created.


=head2 CreateDirectConnectGateway

=over

=item DirectConnectGatewayName => Str

=item [AmazonSideAsn => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateDirectConnectGateway>

Returns: a L<Paws::DirectConnect::CreateDirectConnectGatewayResult> instance

Creates a new direct connect gateway. A direct connect gateway is an
intermediate object that enables you to connect a set of virtual
interfaces and virtual private gateways. direct connect gateways are
global and visible in any AWS region after they are created. The
virtual interfaces and virtual private gateways that are connected
through a direct connect gateway can be in different regions. This
enables you to connect to a VPC in any region, regardless of the region
in which the virtual interfaces are located, and pass traffic between
them.


=head2 CreateDirectConnectGatewayAssociation

=over

=item DirectConnectGatewayId => Str

=item VirtualGatewayId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateDirectConnectGatewayAssociation>

Returns: a L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult> instance

Creates an association between a direct connect gateway and a virtual
private gateway (VGW). The VGW must be attached to a VPC and must not
be associated with another direct connect gateway.


=head2 CreateInterconnect

=over

=item Bandwidth => Str

=item InterconnectName => Str

=item Location => Str

=item [LagId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateInterconnect>

Returns: a L<Paws::DirectConnect::Interconnect> instance

Creates a new interconnect between a AWS Direct Connect partner's
network and a specific AWS Direct Connect location.

An interconnect is a connection which is capable of hosting other
connections. The AWS Direct Connect partner can use an interconnect to
provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do
not have their own connections. Like a standard connection, an
interconnect links the AWS Direct Connect partner's network to an AWS
Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet
fiber-optic cable. One end is connected to the partner's router, the
other to an AWS Direct Connect router.

You can automatically add the new interconnect to a link aggregation
group (LAG) by specifying a LAG ID in the request. This ensures that
the new interconnect is allocated on the same AWS Direct Connect
endpoint that hosts the specified LAG. If there are no available ports
on the endpoint, the request fails and no interconnect will be created.

For each end customer, the AWS Direct Connect partner provisions a
connection on their interconnect by calling
AllocateConnectionOnInterconnect. The end customer can then connect to
AWS resources by creating a virtual interface on their connection,
using the VLAN assigned to them by the AWS Direct Connect partner.

This is intended for use by AWS Direct Connect partners only.


=head2 CreateLag

=over

=item ConnectionsBandwidth => Str

=item LagName => Str

=item Location => Str

=item NumberOfConnections => Int

=item [ConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Creates a new link aggregation group (LAG) with the specified number of
bundled physical connections between the customer network and a
specific AWS Direct Connect location. A LAG is a logical interface that
uses the Link Aggregation Control Protocol (LACP) to aggregate multiple
1 gigabit or 10 gigabit interfaces, allowing you to treat them as a
single interface.

All connections in a LAG must use the same bandwidth (for example, 10
Gbps), and must terminate at the same AWS Direct Connect endpoint.

You can have up to 10 connections per LAG. Regardless of this limit, if
you request more connections for the LAG than AWS Direct Connect can
allocate on a single endpoint, no LAG is created.

You can specify an existing physical connection or interconnect to
include in the LAG (which counts towards the total number of
connections). Doing so interrupts the current physical connection or
hosted connections, and re-establishes them as a member of the LAG. The
LAG will be created on the same AWS Direct Connect endpoint to which
the connection terminates. Any virtual interfaces associated with the
connection are automatically disassociated and re-associated with the
LAG. The connection ID does not change.

If the AWS account used to create a LAG is a registered AWS Direct
Connect partner, the LAG is automatically enabled to host
sub-connections. For a LAG owned by a partner, any associated virtual
interfaces cannot be directly configured.


=head2 CreatePrivateVirtualInterface

=over

=item ConnectionId => Str

=item NewPrivateVirtualInterface => L<Paws::DirectConnect::NewPrivateVirtualInterface>


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreatePrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Creates a new private virtual interface. A virtual interface is the
VLAN that transports AWS Direct Connect traffic. A private virtual
interface supports sending traffic to a single virtual private cloud
(VPC).


=head2 CreatePublicVirtualInterface

=over

=item ConnectionId => Str

=item NewPublicVirtualInterface => L<Paws::DirectConnect::NewPublicVirtualInterface>


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreatePublicVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Creates a new public virtual interface. A virtual interface is the VLAN
that transports AWS Direct Connect traffic. A public virtual interface
supports sending traffic to public services of AWS such as Amazon
Simple Storage Service (Amazon S3).

When creating an IPv6 public virtual interface (addressFamily is
'ipv6'), the customer and amazon address fields should be left blank to
use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
supported.


=head2 DeleteBGPPeer

=over

=item [Asn => Int]

=item [CustomerAddress => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteBGPPeer>

Returns: a L<Paws::DirectConnect::DeleteBGPPeerResponse> instance

Deletes a BGP peer on the specified virtual interface that matches the
specified customer address and ASN. You cannot delete the last BGP peer
from a virtual interface.


=head2 DeleteConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Deletes the connection.

Deleting a connection only stops the AWS Direct Connect port hour and
data transfer charges. You need to cancel separately with the providers
any services or charges for cross-connects or network circuits that
connect you to the AWS Direct Connect location.


=head2 DeleteDirectConnectGateway

=over

=item DirectConnectGatewayId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteDirectConnectGateway>

Returns: a L<Paws::DirectConnect::DeleteDirectConnectGatewayResult> instance

Deletes a direct connect gateway. You must first delete all virtual
interfaces that are attached to the direct connect gateway and
disassociate all virtual private gateways that are associated with the
direct connect gateway.


=head2 DeleteDirectConnectGatewayAssociation

=over

=item DirectConnectGatewayId => Str

=item VirtualGatewayId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociation>

Returns: a L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult> instance

Deletes the association between a direct connect gateway and a virtual
private gateway.


=head2 DeleteInterconnect

=over

=item InterconnectId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteInterconnect>

Returns: a L<Paws::DirectConnect::DeleteInterconnectResponse> instance

Deletes the specified interconnect.

This is intended for use by AWS Direct Connect partners only.


=head2 DeleteLag

=over

=item LagId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Deletes a link aggregation group (LAG). You cannot delete a LAG if it
has active virtual interfaces or hosted connections.


=head2 DeleteVirtualInterface

=over

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteVirtualInterface>

Returns: a L<Paws::DirectConnect::DeleteVirtualInterfaceResponse> instance

Deletes a virtual interface.


=head2 DescribeConnectionLoa

=over

=item ConnectionId => Str

=item [LoaContentType => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeConnectionLoa>

Returns: a L<Paws::DirectConnect::DescribeConnectionLoaResponse> instance

Deprecated in favor of DescribeLoa.

Returns the LOA-CFA for a Connection.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that your APN partner or service provider uses when
establishing your cross connect to AWS at the colocation facility. For
more information, see Requesting Cross Connects at AWS Direct Connect
Locations
(http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the AWS Direct Connect user guide.


=head2 DescribeConnections

=over

=item [ConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeConnections>

Returns: a L<Paws::DirectConnect::Connections> instance

Displays all connections in this region.

If a connection ID is provided, the call returns only that particular
connection.


=head2 DescribeConnectionsOnInterconnect

=over

=item InterconnectId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeConnectionsOnInterconnect>

Returns: a L<Paws::DirectConnect::Connections> instance

Deprecated in favor of DescribeHostedConnections.

Returns a list of connections that have been provisioned on the given
interconnect.

This is intended for use by AWS Direct Connect partners only.


=head2 DescribeDirectConnectGatewayAssociations

=over

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociations>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult> instance

Returns a list of all direct connect gateway and virtual private
gateway (VGW) associations. Either a direct connect gateway ID or a VGW
ID must be provided in the request. If a direct connect gateway ID is
provided, the response returns all VGWs associated with the direct
connect gateway. If a VGW ID is provided, the response returns all
direct connect gateways associated with the VGW. If both are provided,
the response only returns the association that matches both the direct
connect gateway and the VGW.


=head2 DescribeDirectConnectGatewayAttachments

=over

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachments>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult> instance

Returns a list of all direct connect gateway and virtual interface
(VIF) attachments. Either a direct connect gateway ID or a VIF ID must
be provided in the request. If a direct connect gateway ID is provided,
the response returns all VIFs attached to the direct connect gateway.
If a VIF ID is provided, the response returns all direct connect
gateways attached to the VIF. If both are provided, the response only
returns the attachment that matches both the direct connect gateway and
the VIF.


=head2 DescribeDirectConnectGateways

=over

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGateways>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewaysResult> instance

Returns a list of direct connect gateways in your account. Deleted
direct connect gateways are not returned. You can provide a direct
connect gateway ID in the request to return information about the
specific direct connect gateway only. Otherwise, if a direct connect
gateway ID is not provided, information about all of your direct
connect gateways is returned.


=head2 DescribeHostedConnections

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeHostedConnections>

Returns: a L<Paws::DirectConnect::Connections> instance

Returns a list of hosted connections that have been provisioned on the
given interconnect or link aggregation group (LAG).

This is intended for use by AWS Direct Connect partners only.


=head2 DescribeInterconnectLoa

=over

=item InterconnectId => Str

=item [LoaContentType => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeInterconnectLoa>

Returns: a L<Paws::DirectConnect::DescribeInterconnectLoaResponse> instance

Deprecated in favor of DescribeLoa.

Returns the LOA-CFA for an Interconnect.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that is used when establishing your cross connect to AWS
at the colocation facility. For more information, see Requesting Cross
Connects at AWS Direct Connect Locations
(http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the AWS Direct Connect user guide.


=head2 DescribeInterconnects

=over

=item [InterconnectId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeInterconnects>

Returns: a L<Paws::DirectConnect::Interconnects> instance

Returns a list of interconnects owned by the AWS account.

If an interconnect ID is provided, it will only return this particular
interconnect.


=head2 DescribeLags

=over

=item [LagId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLags>

Returns: a L<Paws::DirectConnect::Lags> instance

Describes the link aggregation groups (LAGs) in your account.

If a LAG ID is provided, only information about the specified LAG is
returned.


=head2 DescribeLoa

=over

=item ConnectionId => Str

=item [LoaContentType => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLoa>

Returns: a L<Paws::DirectConnect::Loa> instance

Returns the LOA-CFA for a connection, interconnect, or link aggregation
group (LAG).

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that is used when establishing your cross connect to AWS
at the colocation facility. For more information, see Requesting Cross
Connects at AWS Direct Connect Locations
(http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the AWS Direct Connect user guide.


=head2 DescribeLocations

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLocations>

Returns: a L<Paws::DirectConnect::Locations> instance

Returns the list of AWS Direct Connect locations in the current AWS
region. These are the locations that may be selected when calling
CreateConnection or CreateInterconnect.


=head2 DescribeTags

=over

=item ResourceArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeTags>

Returns: a L<Paws::DirectConnect::DescribeTagsResponse> instance

Describes the tags associated with the specified Direct Connect
resources.


=head2 DescribeVirtualGateways

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeVirtualGateways>

Returns: a L<Paws::DirectConnect::VirtualGateways> instance

Returns a list of virtual private gateways owned by the AWS account.

You can create one or more AWS Direct Connect private virtual
interfaces linking to a virtual private gateway. A virtual private
gateway can be managed via Amazon Virtual Private Cloud (VPC) console
or the EC2 CreateVpnGateway
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html)
action.


=head2 DescribeVirtualInterfaces

=over

=item [ConnectionId => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeVirtualInterfaces>

Returns: a L<Paws::DirectConnect::VirtualInterfaces> instance

Displays all virtual interfaces for an AWS account. Virtual interfaces
deleted fewer than 15 minutes before you make the request are also
returned. If you specify a connection ID, only the virtual interfaces
associated with the connection are returned. If you specify a virtual
interface ID, then only a single virtual interface is returned.

A virtual interface (VLAN) transmits the traffic between the AWS Direct
Connect location and the customer.


=head2 DisassociateConnectionFromLag

=over

=item ConnectionId => Str

=item LagId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DisassociateConnectionFromLag>

Returns: a L<Paws::DirectConnect::Connection> instance

Disassociates a connection from a link aggregation group (LAG). The
connection is interrupted and re-established as a standalone connection
(the connection is not deleted; to delete the connection, use the
DeleteConnection request). If the LAG has associated virtual interfaces
or hosted connections, they remain associated with the LAG. A
disassociated connection owned by an AWS Direct Connect partner is
automatically converted to an interconnect.

If disassociating the connection will cause the LAG to fall below its
setting for minimum number of operational connections, the request
fails, except when it's the last member of the LAG. If all connections
are disassociated, the LAG continues to exist as an empty LAG with no
physical connections.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::DirectConnect::Tag>]


=back

Each argument is described in detail in: L<Paws::DirectConnect::TagResource>

Returns: a L<Paws::DirectConnect::TagResourceResponse> instance

Adds the specified tags to the specified Direct Connect resource. Each
Direct Connect resource can have a maximum of 50 tags.

Each tag consists of a key and an optional value. If a tag with the
same key is already associated with the Direct Connect resource, this
action updates its value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UntagResource>

Returns: a L<Paws::DirectConnect::UntagResourceResponse> instance

Removes one or more tags from the specified Direct Connect resource.


=head2 UpdateLag

=over

=item LagId => Str

=item [LagName => Str]

=item [MinimumLinks => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UpdateLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Updates the attributes of a link aggregation group (LAG).

You can update the following attributes:

=over

=item *

The name of the LAG.

=item *

The value for the minimum number of connections that must be
operational for the LAG itself to be operational.

=back

When you create a LAG, the default value for the minimum number of
operational connections is zero (0). If you update this value, and the
number of operational connections falls below the specified value, the
LAG will automatically go down to avoid overutilization of the
remaining connections. Adjusting this value should be done with care as
it could force the LAG down if the value is set higher than the current
number of operational connections.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

