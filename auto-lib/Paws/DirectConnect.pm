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

  
  sub AcceptDirectConnectGatewayAssociationProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposal', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub AllocateTransitVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AllocateTransitVirtualInterface', @_);
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
  sub AssociateMacSecKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::AssociateMacSecKey', @_);
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
  sub ConfirmTransitVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::ConfirmTransitVirtualInterface', @_);
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
  sub CreateDirectConnectGatewayAssociationProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposal', @_);
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
  sub CreateTransitVirtualInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::CreateTransitVirtualInterface', @_);
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
  sub DeleteDirectConnectGatewayAssociationProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposal', @_);
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
  sub DescribeDirectConnectGatewayAssociationProposals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposals', @_);
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
  sub DisassociateMacSecKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::DisassociateMacSecKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualInterfaceTestHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::ListVirtualInterfaceTestHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBgpFailoverTest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::StartBgpFailoverTest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBgpFailoverTest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::StopBgpFailoverTest', @_);
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
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDirectConnectGatewayAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UpdateDirectConnectGatewayAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UpdateLag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVirtualInterfaceAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DirectConnect::UpdateVirtualInterfaceAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDirectConnectGatewayAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDirectConnectGatewayAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDirectConnectGatewayAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->directConnectGatewayAssociations }, @{ $next_result->directConnectGatewayAssociations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'directConnectGatewayAssociations') foreach (@{ $result->directConnectGatewayAssociations });
        $result = $self->DescribeDirectConnectGatewayAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'directConnectGatewayAssociations') foreach (@{ $result->directConnectGatewayAssociations });
    }

    return undef
  }
  sub DescribeAllDirectConnectGatewayAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDirectConnectGatewayAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDirectConnectGatewayAttachments(@_, nextToken => $next_result->nextToken);
        push @{ $result->directConnectGatewayAttachments }, @{ $next_result->directConnectGatewayAttachments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'directConnectGatewayAttachments') foreach (@{ $result->directConnectGatewayAttachments });
        $result = $self->DescribeDirectConnectGatewayAttachments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'directConnectGatewayAttachments') foreach (@{ $result->directConnectGatewayAttachments });
    }

    return undef
  }
  sub DescribeAllDirectConnectGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDirectConnectGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeDirectConnectGateways(@_, nextToken => $next_result->nextToken);
        push @{ $result->directConnectGateways }, @{ $next_result->directConnectGateways };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'directConnectGateways') foreach (@{ $result->directConnectGateways });
        $result = $self->DescribeDirectConnectGateways(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'directConnectGateways') foreach (@{ $result->directConnectGateways });
    }

    return undef
  }


  sub operations { qw/AcceptDirectConnectGatewayAssociationProposal AllocateConnectionOnInterconnect AllocateHostedConnection AllocatePrivateVirtualInterface AllocatePublicVirtualInterface AllocateTransitVirtualInterface AssociateConnectionWithLag AssociateHostedConnection AssociateMacSecKey AssociateVirtualInterface ConfirmConnection ConfirmPrivateVirtualInterface ConfirmPublicVirtualInterface ConfirmTransitVirtualInterface CreateBGPPeer CreateConnection CreateDirectConnectGateway CreateDirectConnectGatewayAssociation CreateDirectConnectGatewayAssociationProposal CreateInterconnect CreateLag CreatePrivateVirtualInterface CreatePublicVirtualInterface CreateTransitVirtualInterface DeleteBGPPeer DeleteConnection DeleteDirectConnectGateway DeleteDirectConnectGatewayAssociation DeleteDirectConnectGatewayAssociationProposal DeleteInterconnect DeleteLag DeleteVirtualInterface DescribeConnectionLoa DescribeConnections DescribeConnectionsOnInterconnect DescribeDirectConnectGatewayAssociationProposals DescribeDirectConnectGatewayAssociations DescribeDirectConnectGatewayAttachments DescribeDirectConnectGateways DescribeHostedConnections DescribeInterconnectLoa DescribeInterconnects DescribeLags DescribeLoa DescribeLocations DescribeTags DescribeVirtualGateways DescribeVirtualInterfaces DisassociateConnectionFromLag DisassociateMacSecKey ListVirtualInterfaceTestHistory StartBgpFailoverTest StopBgpFailoverTest TagResource UntagResource UpdateConnection UpdateDirectConnectGatewayAssociation UpdateLag UpdateVirtualInterfaceAttributes / }

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
location over a standard Ethernet fiber-optic cable. One end of the
cable is connected to your router, the other to an AWS Direct Connect
router. With this connection in place, you can create virtual
interfaces directly to the AWS cloud (for example, to Amazon EC2 and
Amazon S3) and to Amazon VPC, bypassing Internet service providers in
your network path. A connection provides access to all AWS Regions
except the China (Beijing) and (China) Ningxia Regions. AWS resources
in the China Regions can only be accessed through locations associated
with those Regions.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25>


=head1 METHODS

=head2 AcceptDirectConnectGatewayAssociationProposal

=over

=item AssociatedGatewayOwnerAccount => Str

=item DirectConnectGatewayId => Str

=item ProposalId => Str

=item [OverrideAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposal>

Returns: a L<Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult> instance

Accepts a proposal request to attach a virtual private gateway or
transit gateway to a Direct Connect gateway.


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

Deprecated. Use AllocateHostedConnection instead.

Creates a hosted connection on an interconnect.

Allocates a VLAN number and a specified amount of bandwidth for use by
a hosted connection on the specified interconnect.

Intended for use by AWS Direct Connect Partners only.


=head2 AllocateHostedConnection

=over

=item Bandwidth => Str

=item ConnectionId => Str

=item ConnectionName => Str

=item OwnerAccount => Str

=item Vlan => Int

=item [Tags => ArrayRef[L<Paws::DirectConnect::Tag>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocateHostedConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Creates a hosted connection on the specified interconnect or a link
aggregation group (LAG) of interconnects.

Allocates a VLAN number and a specified amount of capacity (bandwidth)
for use by a hosted connection on the specified interconnect or LAG of
interconnects. AWS polices the hosted connection for the specified
capacity and the AWS Direct Connect Partner must also police the hosted
connection for the specified capacity.

Intended for use by AWS Direct Connect Partners only.


=head2 AllocatePrivateVirtualInterface

=over

=item ConnectionId => Str

=item NewPrivateVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation>

=item OwnerAccount => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocatePrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Provisions a private virtual interface to be owned by the specified AWS
account.

Virtual interfaces created using this action must be confirmed by the
owner using ConfirmPrivateVirtualInterface. Until then, the virtual
interface is in the C<Confirming> state and is not available to handle
traffic.


=head2 AllocatePublicVirtualInterface

=over

=item ConnectionId => Str

=item NewPublicVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPublicVirtualInterfaceAllocation>

=item OwnerAccount => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocatePublicVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Provisions a public virtual interface to be owned by the specified AWS
account.

The owner of a connection calls this function to provision a public
virtual interface to be owned by the specified AWS account.

Virtual interfaces created using this function must be confirmed by the
owner using ConfirmPublicVirtualInterface. Until this step has been
completed, the virtual interface is in the C<confirming> state and is
not available to handle traffic.

When creating an IPv6 public virtual interface, omit the Amazon address
and customer address. IPv6 addresses are automatically assigned from
the Amazon pool of IPv6 addresses; you cannot specify custom IPv6
addresses.


=head2 AllocateTransitVirtualInterface

=over

=item ConnectionId => Str

=item NewTransitVirtualInterfaceAllocation => L<Paws::DirectConnect::NewTransitVirtualInterfaceAllocation>

=item OwnerAccount => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AllocateTransitVirtualInterface>

Returns: a L<Paws::DirectConnect::AllocateTransitVirtualInterfaceResult> instance

Provisions a transit virtual interface to be owned by the specified AWS
account. Use this type of interface to connect a transit gateway to
your Direct Connect gateway.

The owner of a connection provisions a transit virtual interface to be
owned by the specified AWS account.

After you create a transit virtual interface, it must be confirmed by
the owner using ConfirmTransitVirtualInterface. Until this step has
been completed, the transit virtual interface is in the C<requested>
state and is not available to handle traffic.


=head2 AssociateConnectionWithLag

=over

=item ConnectionId => Str

=item LagId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::AssociateConnectionWithLag>

Returns: a L<Paws::DirectConnect::Connection> instance

Associates an existing connection with a link aggregation group (LAG).
The connection is interrupted and re-established as a member of the LAG
(connectivity to AWS is interrupted). The connection must be hosted on
the same AWS Direct Connect endpoint as the LAG, and its bandwidth must
match the bandwidth for the LAG. You can re-associate a connection
that's currently associated with a different LAG; however, if removing
the connection would cause the original LAG to fall below its setting
for minimum number of operational connections, the request fails.

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

Intended for use by AWS Direct Connect Partners only.


=head2 AssociateMacSecKey

=over

=item ConnectionId => Str

=item [Cak => Str]

=item [Ckn => Str]

=item [SecretARN => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::AssociateMacSecKey>

Returns: a L<Paws::DirectConnect::AssociateMacSecKeyResponse> instance

Associates a MAC Security (MACsec) Connection Key Name (CKN)/
Connectivity Association Key (CAK) pair with an AWS Direct Connect
dedicated connection.

You must supply either the C<secretARN,> or the CKN/CAK (C<ckn> and
C<cak>) pair in the request.

For information about MAC Security (MACsec) key considerations, see
MACsec pre-shared CKN/CAK key considerations
(https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration)
in the I<AWS Direct Connect User Guide>.


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

To reassociate a virtual interface to a new connection or LAG, the
requester must own either the virtual interface itself or the
connection to which the virtual interface is currently associated.
Additionally, the requester must own the connection or LAG for the
association.


=head2 ConfirmConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmConnection>

Returns: a L<Paws::DirectConnect::ConfirmConnectionResponse> instance

Confirms the creation of the specified hosted connection on an
interconnect.

Upon creation, the hosted connection is initially in the C<Ordering>
state, and remains in this state until the owner confirms creation of
the hosted connection.


=head2 ConfirmPrivateVirtualInterface

=over

=item VirtualInterfaceId => Str

=item [DirectConnectGatewayId => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmPrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse> instance

Accepts ownership of a private virtual interface created by another AWS
account.

After the virtual interface owner makes this call, the virtual
interface is created and attached to the specified virtual private
gateway or Direct Connect gateway, and is made available to handle
traffic.


=head2 ConfirmPublicVirtualInterface

=over

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmPublicVirtualInterface>

Returns: a L<Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse> instance

Accepts ownership of a public virtual interface created by another AWS
account.

After the virtual interface owner makes this call, the specified
virtual interface is created and made available to handle traffic.


=head2 ConfirmTransitVirtualInterface

=over

=item DirectConnectGatewayId => Str

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::ConfirmTransitVirtualInterface>

Returns: a L<Paws::DirectConnect::ConfirmTransitVirtualInterfaceResponse> instance

Accepts ownership of a transit virtual interface created by another AWS
account.

After the owner of the transit virtual interface makes this call, the
specified transit virtual interface is created and made available to
handle traffic.


=head2 CreateBGPPeer

=over

=item [NewBGPPeer => L<Paws::DirectConnect::NewBGPPeer>]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateBGPPeer>

Returns: a L<Paws::DirectConnect::CreateBGPPeerResponse> instance

Creates a BGP peer on the specified virtual interface.

You must create a BGP peer for the corresponding address family
(IPv4/IPv6) in order to access AWS resources that also use that address
family.

If logical redundancy is not supported by the connection, interconnect,
or LAG, the BGP peer cannot be in the same address family as an
existing BGP peer on the virtual interface.

When creating a IPv6 BGP peer, omit the Amazon address and customer
address. IPv6 addresses are automatically assigned from the Amazon pool
of IPv6 addresses; you cannot specify custom IPv6 addresses.

For a public virtual interface, the Autonomous System Number (ASN) must
be private or already on the allow list for the virtual interface.


=head2 CreateConnection

=over

=item Bandwidth => Str

=item ConnectionName => Str

=item Location => Str

=item [LagId => Str]

=item [ProviderName => Str]

=item [RequestMACSec => Bool]

=item [Tags => ArrayRef[L<Paws::DirectConnect::Tag>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Creates a connection between a customer network and a specific AWS
Direct Connect location.

A connection links your internal network to an AWS Direct Connect
location over a standard Ethernet fiber-optic cable. One end of the
cable is connected to your router, the other to an AWS Direct Connect
router.

To find the locations for your Region, use DescribeLocations.

You can automatically add the new connection to a link aggregation
group (LAG) by specifying a LAG ID in the request. This ensures that
the new connection is allocated on the same AWS Direct Connect endpoint
that hosts the specified LAG. If there are no available ports on the
endpoint, the request fails and no connection is created.


=head2 CreateDirectConnectGateway

=over

=item DirectConnectGatewayName => Str

=item [AmazonSideAsn => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateDirectConnectGateway>

Returns: a L<Paws::DirectConnect::CreateDirectConnectGatewayResult> instance

Creates a Direct Connect gateway, which is an intermediate object that
enables you to connect a set of virtual interfaces and virtual private
gateways. A Direct Connect gateway is global and visible in any AWS
Region after it is created. The virtual interfaces and virtual private
gateways that are connected through a Direct Connect gateway can be in
different AWS Regions. This enables you to connect to a VPC in any
Region, regardless of the Region in which the virtual interfaces are
located, and pass traffic between them.


=head2 CreateDirectConnectGatewayAssociation

=over

=item DirectConnectGatewayId => Str

=item [AddAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]

=item [GatewayId => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateDirectConnectGatewayAssociation>

Returns: a L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationResult> instance

Creates an association between a Direct Connect gateway and a virtual
private gateway. The virtual private gateway must be attached to a VPC
and must not be associated with another Direct Connect gateway.


=head2 CreateDirectConnectGatewayAssociationProposal

=over

=item DirectConnectGatewayId => Str

=item DirectConnectGatewayOwnerAccount => Str

=item GatewayId => Str

=item [AddAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]

=item [RemoveAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposal>

Returns: a L<Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult> instance

Creates a proposal to associate the specified virtual private gateway
or transit gateway with the specified Direct Connect gateway.

You can associate a Direct Connect gateway and virtual private gateway
or transit gateway that is owned by any AWS account.


=head2 CreateInterconnect

=over

=item Bandwidth => Str

=item InterconnectName => Str

=item Location => Str

=item [LagId => Str]

=item [ProviderName => Str]

=item [Tags => ArrayRef[L<Paws::DirectConnect::Tag>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateInterconnect>

Returns: a L<Paws::DirectConnect::Interconnect> instance

Creates an interconnect between an AWS Direct Connect Partner's network
and a specific AWS Direct Connect location.

An interconnect is a connection that is capable of hosting other
connections. The AWS Direct Connect partner can use an interconnect to
provide AWS Direct Connect hosted connections to customers through
their own network services. Like a standard connection, an interconnect
links the partner's network to an AWS Direct Connect location over a
standard Ethernet fiber-optic cable. One end is connected to the
partner's router, the other to an AWS Direct Connect router.

You can automatically add the new interconnect to a link aggregation
group (LAG) by specifying a LAG ID in the request. This ensures that
the new interconnect is allocated on the same AWS Direct Connect
endpoint that hosts the specified LAG. If there are no available ports
on the endpoint, the request fails and no interconnect is created.

For each end customer, the AWS Direct Connect Partner provisions a
connection on their interconnect by calling AllocateHostedConnection.
The end customer can then connect to AWS resources by creating a
virtual interface on their connection, using the VLAN assigned to them
by the AWS Direct Connect Partner.

Intended for use by AWS Direct Connect Partners only.


=head2 CreateLag

=over

=item ConnectionsBandwidth => Str

=item LagName => Str

=item Location => Str

=item NumberOfConnections => Int

=item [ChildConnectionTags => ArrayRef[L<Paws::DirectConnect::Tag>]]

=item [ConnectionId => Str]

=item [ProviderName => Str]

=item [RequestMACSec => Bool]

=item [Tags => ArrayRef[L<Paws::DirectConnect::Tag>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Creates a link aggregation group (LAG) with the specified number of
bundled physical dedicated connections between the customer network and
a specific AWS Direct Connect location. A LAG is a logical interface
that uses the Link Aggregation Control Protocol (LACP) to aggregate
multiple interfaces, enabling you to treat them as a single interface.

All connections in a LAG must use the same bandwidth (either 1Gbps or
10Gbps) and must terminate at the same AWS Direct Connect endpoint.

You can have up to 10 dedicated connections per LAG. Regardless of this
limit, if you request more connections for the LAG than AWS Direct
Connect can allocate on a single endpoint, no LAG is created.

You can specify an existing physical dedicated connection or
interconnect to include in the LAG (which counts towards the total
number of connections). Doing so interrupts the current physical
dedicated connection, and re-establishes them as a member of the LAG.
The LAG will be created on the same AWS Direct Connect endpoint to
which the dedicated connection terminates. Any virtual interfaces
associated with the dedicated connection are automatically
disassociated and re-associated with the LAG. The connection ID does
not change.

If the AWS account used to create a LAG is a registered AWS Direct
Connect Partner, the LAG is automatically enabled to host
sub-connections. For a LAG owned by a partner, any associated virtual
interfaces cannot be directly configured.


=head2 CreatePrivateVirtualInterface

=over

=item ConnectionId => Str

=item NewPrivateVirtualInterface => L<Paws::DirectConnect::NewPrivateVirtualInterface>


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreatePrivateVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Creates a private virtual interface. A virtual interface is the VLAN
that transports AWS Direct Connect traffic. A private virtual interface
can be connected to either a Direct Connect gateway or a Virtual
Private Gateway (VGW). Connecting the private virtual interface to a
Direct Connect gateway enables the possibility for connecting to
multiple VPCs, including VPCs in different AWS Regions. Connecting the
private virtual interface to a VGW only provides access to a single VPC
within the same Region.

Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call DescribeConnections. To check whether your virtual
interface supports jumbo frames, call DescribeVirtualInterfaces.


=head2 CreatePublicVirtualInterface

=over

=item ConnectionId => Str

=item NewPublicVirtualInterface => L<Paws::DirectConnect::NewPublicVirtualInterface>


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreatePublicVirtualInterface>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Creates a public virtual interface. A virtual interface is the VLAN
that transports AWS Direct Connect traffic. A public virtual interface
supports sending traffic to public services of AWS such as Amazon S3.

When creating an IPv6 public virtual interface (C<addressFamily> is
C<ipv6>), leave the C<customer> and C<amazon> address fields blank to
use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.


=head2 CreateTransitVirtualInterface

=over

=item ConnectionId => Str

=item NewTransitVirtualInterface => L<Paws::DirectConnect::NewTransitVirtualInterface>


=back

Each argument is described in detail in: L<Paws::DirectConnect::CreateTransitVirtualInterface>

Returns: a L<Paws::DirectConnect::CreateTransitVirtualInterfaceResult> instance

Creates a transit virtual interface. A transit virtual interface should
be used to access one or more transit gateways associated with Direct
Connect gateways. A transit virtual interface enables the connection of
multiple VPCs attached to a transit gateway to a Direct Connect
gateway.

If you associate your transit gateway with one or more Direct Connect
gateways, the Autonomous System Number (ASN) used by the transit
gateway and the Direct Connect gateway must be different. For example,
if you use the default ASN 64512 for both your the transit gateway and
Direct Connect gateway, the association request fails.

Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call DescribeConnections. To check whether your virtual
interface supports jumbo frames, call DescribeVirtualInterfaces.


=head2 DeleteBGPPeer

=over

=item [Asn => Int]

=item [BgpPeerId => Str]

=item [CustomerAddress => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteBGPPeer>

Returns: a L<Paws::DirectConnect::DeleteBGPPeerResponse> instance

Deletes the specified BGP peer on the specified virtual interface with
the specified customer address and ASN.

You cannot delete the last BGP peer from a virtual interface.


=head2 DeleteConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Deletes the specified connection.

Deleting a connection only stops the AWS Direct Connect port hour and
data transfer charges. If you are partnering with any third parties to
connect with the AWS Direct Connect location, you must cancel your
service with them separately.


=head2 DeleteDirectConnectGateway

=over

=item DirectConnectGatewayId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteDirectConnectGateway>

Returns: a L<Paws::DirectConnect::DeleteDirectConnectGatewayResult> instance

Deletes the specified Direct Connect gateway. You must first delete all
virtual interfaces that are attached to the Direct Connect gateway and
disassociate all virtual private gateways associated with the Direct
Connect gateway.


=head2 DeleteDirectConnectGatewayAssociation

=over

=item [AssociationId => Str]

=item [DirectConnectGatewayId => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociation>

Returns: a L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult> instance

Deletes the association between the specified Direct Connect gateway
and virtual private gateway.

We recommend that you specify the C<associationID> to delete the
association. Alternatively, if you own virtual gateway and a Direct
Connect gateway association, you can specify the C<virtualGatewayId>
and C<directConnectGatewayId> to delete an association.


=head2 DeleteDirectConnectGatewayAssociationProposal

=over

=item ProposalId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposal>

Returns: a L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult> instance

Deletes the association proposal request between the specified Direct
Connect gateway and virtual private gateway or transit gateway.


=head2 DeleteInterconnect

=over

=item InterconnectId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteInterconnect>

Returns: a L<Paws::DirectConnect::DeleteInterconnectResponse> instance

Deletes the specified interconnect.

Intended for use by AWS Direct Connect Partners only.


=head2 DeleteLag

=over

=item LagId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DeleteLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Deletes the specified link aggregation group (LAG). You cannot delete a
LAG if it has active virtual interfaces or hosted connections.


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

Deprecated. Use DescribeLoa instead.

Gets the LOA-CFA for a connection.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that your APN partner or service provider uses when
establishing your cross connect to AWS at the colocation facility. For
more information, see Requesting Cross Connects at AWS Direct Connect
Locations
(https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the I<AWS Direct Connect User Guide>.


=head2 DescribeConnections

=over

=item [ConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeConnections>

Returns: a L<Paws::DirectConnect::Connections> instance

Displays the specified connection or all connections in this Region.


=head2 DescribeConnectionsOnInterconnect

=over

=item InterconnectId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeConnectionsOnInterconnect>

Returns: a L<Paws::DirectConnect::Connections> instance

Deprecated. Use DescribeHostedConnections instead.

Lists the connections that have been provisioned on the specified
interconnect.

Intended for use by AWS Direct Connect Partners only.


=head2 DescribeDirectConnectGatewayAssociationProposals

=over

=item [AssociatedGatewayId => Str]

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProposalId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposals>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult> instance

Describes one or more association proposals for connection between a
virtual private gateway or transit gateway and a Direct Connect
gateway.


=head2 DescribeDirectConnectGatewayAssociations

=over

=item [AssociatedGatewayId => Str]

=item [AssociationId => Str]

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VirtualGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociations>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult> instance

Lists the associations between your Direct Connect gateways and virtual
private gateways and transit gateways. You must specify one of the
following:

=over

=item *

A Direct Connect gateway

The response contains all virtual private gateways and transit gateways
associated with the Direct Connect gateway.

=item *

A virtual private gateway

The response contains the Direct Connect gateway.

=item *

A transit gateway

The response contains the Direct Connect gateway.

=item *

A Direct Connect gateway and a virtual private gateway

The response contains the association between the Direct Connect
gateway and virtual private gateway.

=item *

A Direct Connect gateway and a transit gateway

The response contains the association between the Direct Connect
gateway and transit gateway.

=back



=head2 DescribeDirectConnectGatewayAttachments

=over

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachments>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult> instance

Lists the attachments between your Direct Connect gateways and virtual
interfaces. You must specify a Direct Connect gateway, a virtual
interface, or both. If you specify a Direct Connect gateway, the
response contains all virtual interfaces attached to the Direct Connect
gateway. If you specify a virtual interface, the response contains all
Direct Connect gateways attached to the virtual interface. If you
specify both, the response contains the attachment between the Direct
Connect gateway and the virtual interface.


=head2 DescribeDirectConnectGateways

=over

=item [DirectConnectGatewayId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeDirectConnectGateways>

Returns: a L<Paws::DirectConnect::DescribeDirectConnectGatewaysResult> instance

Lists all your Direct Connect gateways or only the specified Direct
Connect gateway. Deleted Direct Connect gateways are not returned.


=head2 DescribeHostedConnections

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeHostedConnections>

Returns: a L<Paws::DirectConnect::Connections> instance

Lists the hosted connections that have been provisioned on the
specified interconnect or link aggregation group (LAG).

Intended for use by AWS Direct Connect Partners only.


=head2 DescribeInterconnectLoa

=over

=item InterconnectId => Str

=item [LoaContentType => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeInterconnectLoa>

Returns: a L<Paws::DirectConnect::DescribeInterconnectLoaResponse> instance

Deprecated. Use DescribeLoa instead.

Gets the LOA-CFA for the specified interconnect.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that is used when establishing your cross connect to AWS
at the colocation facility. For more information, see Requesting Cross
Connects at AWS Direct Connect Locations
(https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the I<AWS Direct Connect User Guide>.


=head2 DescribeInterconnects

=over

=item [InterconnectId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeInterconnects>

Returns: a L<Paws::DirectConnect::Interconnects> instance

Lists the interconnects owned by the AWS account or only the specified
interconnect.


=head2 DescribeLags

=over

=item [LagId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLags>

Returns: a L<Paws::DirectConnect::Lags> instance

Describes all your link aggregation groups (LAG) or the specified LAG.


=head2 DescribeLoa

=over

=item ConnectionId => Str

=item [LoaContentType => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLoa>

Returns: a L<Paws::DirectConnect::Loa> instance

Gets the LOA-CFA for a connection, interconnect, or link aggregation
group (LAG).

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
is a document that is used when establishing your cross connect to AWS
at the colocation facility. For more information, see Requesting Cross
Connects at AWS Direct Connect Locations
(https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
in the I<AWS Direct Connect User Guide>.


=head2 DescribeLocations

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeLocations>

Returns: a L<Paws::DirectConnect::Locations> instance

Lists the AWS Direct Connect locations in the current AWS Region. These
are the locations that can be selected when calling CreateConnection or
CreateInterconnect.


=head2 DescribeTags

=over

=item ResourceArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeTags>

Returns: a L<Paws::DirectConnect::DescribeTagsResponse> instance

Describes the tags associated with the specified AWS Direct Connect
resources.


=head2 DescribeVirtualGateways

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::DirectConnect::DescribeVirtualGateways>

Returns: a L<Paws::DirectConnect::VirtualGateways> instance

Lists the virtual private gateways owned by the AWS account.

You can create one or more AWS Direct Connect private virtual
interfaces linked to a virtual private gateway.


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
Connect location and the customer network.


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
disassociated connection owned by an AWS Direct Connect Partner is
automatically converted to an interconnect.

If disassociating the connection would cause the LAG to fall below its
setting for minimum number of operational connections, the request
fails, except when it's the last member of the LAG. If all connections
are disassociated, the LAG continues to exist as an empty LAG with no
physical connections.


=head2 DisassociateMacSecKey

=over

=item ConnectionId => Str

=item SecretARN => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::DisassociateMacSecKey>

Returns: a L<Paws::DirectConnect::DisassociateMacSecKeyResponse> instance

Removes the association between a MAC Security (MACsec) security key
and an AWS Direct Connect dedicated connection.


=head2 ListVirtualInterfaceTestHistory

=over

=item [BgpPeers => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [TestId => Str]

=item [VirtualInterfaceId => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::ListVirtualInterfaceTestHistory>

Returns: a L<Paws::DirectConnect::ListVirtualInterfaceTestHistoryResponse> instance

Lists the virtual interface failover test history.


=head2 StartBgpFailoverTest

=over

=item VirtualInterfaceId => Str

=item [BgpPeers => ArrayRef[Str|Undef]]

=item [TestDurationInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::StartBgpFailoverTest>

Returns: a L<Paws::DirectConnect::StartBgpFailoverTestResponse> instance

Starts the virtual interface failover test that verifies your
configuration meets your resiliency requirements by placing the BGP
peering session in the DOWN state. You can then send traffic to verify
that there are no outages.

You can run the test on public, private, transit, and hosted virtual
interfaces.

You can use ListVirtualInterfaceTestHistory
(https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html)
to view the virtual interface test history.

If you need to stop the test before the test interval completes, use
StopBgpFailoverTest
(https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html).


=head2 StopBgpFailoverTest

=over

=item VirtualInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::DirectConnect::StopBgpFailoverTest>

Returns: a L<Paws::DirectConnect::StopBgpFailoverTestResponse> instance

Stops the virtual interface failover test.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::DirectConnect::Tag>]


=back

Each argument is described in detail in: L<Paws::DirectConnect::TagResource>

Returns: a L<Paws::DirectConnect::TagResourceResponse> instance

Adds the specified tags to the specified AWS Direct Connect resource.
Each resource can have a maximum of 50 tags.

Each tag consists of a key and an optional value. If a tag with the
same key is already associated with the resource, this action updates
its value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UntagResource>

Returns: a L<Paws::DirectConnect::UntagResourceResponse> instance

Removes one or more tags from the specified AWS Direct Connect
resource.


=head2 UpdateConnection

=over

=item ConnectionId => Str

=item [ConnectionName => Str]

=item [EncryptionMode => Str]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UpdateConnection>

Returns: a L<Paws::DirectConnect::Connection> instance

Updates the AWS Direct Connect dedicated connection configuration.

You can update the following parameters for a connection:

=over

=item *

The connection name

=item *

The connection's MAC Security (MACsec) encryption mode.

=back



=head2 UpdateDirectConnectGatewayAssociation

=over

=item [AddAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]

=item [AssociationId => Str]

=item [RemoveAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UpdateDirectConnectGatewayAssociation>

Returns: a L<Paws::DirectConnect::UpdateDirectConnectGatewayAssociationResult> instance

Updates the specified attributes of the Direct Connect gateway
association.

Add or remove prefixes from the association.


=head2 UpdateLag

=over

=item LagId => Str

=item [EncryptionMode => Str]

=item [LagName => Str]

=item [MinimumLinks => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UpdateLag>

Returns: a L<Paws::DirectConnect::Lag> instance

Updates the attributes of the specified link aggregation group (LAG).

You can update the following LAG attributes:

=over

=item *

The name of the LAG.

=item *

The value for the minimum number of connections that must be
operational for the LAG itself to be operational.

=item *

The LAG's MACsec encryption mode.

AWS assigns this value to each connection which is part of the LAG.

=item *

The tags

=back

If you adjust the threshold value for the minimum number of operational
connections, ensure that the new value does not cause the LAG to fall
below the threshold and become non-operational.


=head2 UpdateVirtualInterfaceAttributes

=over

=item VirtualInterfaceId => Str

=item [Mtu => Int]


=back

Each argument is described in detail in: L<Paws::DirectConnect::UpdateVirtualInterfaceAttributes>

Returns: a L<Paws::DirectConnect::VirtualInterface> instance

Updates the specified attributes of the specified virtual private
interface.

Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call DescribeConnections. To check whether your virtual q
interface supports jumbo frames, call DescribeVirtualInterfaces.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDirectConnectGatewayAssociations(sub { },[AssociatedGatewayId => Str, AssociationId => Str, DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str, VirtualGatewayId => Str])

=head2 DescribeAllDirectConnectGatewayAssociations([AssociatedGatewayId => Str, AssociationId => Str, DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str, VirtualGatewayId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - directConnectGatewayAssociations, passing the object as the first parameter, and the string 'directConnectGatewayAssociations' as the second parameter 

If not, it will return a a L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDirectConnectGatewayAttachments(sub { },[DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str, VirtualInterfaceId => Str])

=head2 DescribeAllDirectConnectGatewayAttachments([DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str, VirtualInterfaceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - directConnectGatewayAttachments, passing the object as the first parameter, and the string 'directConnectGatewayAttachments' as the second parameter 

If not, it will return a a L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDirectConnectGateways(sub { },[DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllDirectConnectGateways([DirectConnectGatewayId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - directConnectGateways, passing the object as the first parameter, and the string 'directConnectGateways' as the second parameter 

If not, it will return a a L<Paws::DirectConnect::DescribeDirectConnectGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

