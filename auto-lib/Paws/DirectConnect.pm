
use Paws::API;


package Paws::DirectConnect {
  use Moose;
  sub service { 'directconnect' }
  sub version { '2012-10-25' }
  sub target_prefix { 'OvertureService' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AllocateConnectionOnInterconnect {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::AllocateConnectionOnInterconnect', @_);
  }
  sub AllocatePrivateVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::AllocatePrivateVirtualInterface', @_);
  }
  sub AllocatePublicVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::AllocatePublicVirtualInterface', @_);
  }
  sub ConfirmConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::ConfirmConnection', @_);
  }
  sub ConfirmPrivateVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::ConfirmPrivateVirtualInterface', @_);
  }
  sub ConfirmPublicVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::ConfirmPublicVirtualInterface', @_);
  }
  sub CreateConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::CreateConnection', @_);
  }
  sub CreateInterconnect {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::CreateInterconnect', @_);
  }
  sub CreatePrivateVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::CreatePrivateVirtualInterface', @_);
  }
  sub CreatePublicVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::CreatePublicVirtualInterface', @_);
  }
  sub DeleteConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DeleteConnection', @_);
  }
  sub DeleteInterconnect {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DeleteInterconnect', @_);
  }
  sub DeleteVirtualInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DeleteVirtualInterface', @_);
  }
  sub DescribeConnections {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeConnections', @_);
  }
  sub DescribeConnectionsOnInterconnect {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeConnectionsOnInterconnect', @_);
  }
  sub DescribeInterconnects {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeInterconnects', @_);
  }
  sub DescribeLocations {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeLocations', @_);
  }
  sub DescribeVirtualGateways {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeVirtualGateways', @_);
  }
  sub DescribeVirtualInterfaces {
    my $self = shift;
    return $self->caller->do_call('Paws::DirectConnect::DescribeVirtualInterfaces', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect - Perl Interface to AWS AWS Direct Connect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Direct Connect makes it easy to establish a dedicated network
connection from your premises to Amazon Web Services (AWS). Using AWS
Direct Connect, you can establish private connectivity between AWS and
your data center, office, or colocation environment, which in many
cases can reduce your network costs, increase bandwidth throughput, and
provide a more consistent network experience than Internet-based
connections.

The AWS Direct Connect API Reference provides descriptions, syntax, and
usage examples for each of the actions and data types for AWS Direct
Connect. Use the following links to get started using the I<AWS Direct
Connect API Reference>:

=over

=item * Actions: An alphabetical list of all AWS Direct Connect
actions.

=item * Data Types: An alphabetical list of all AWS Direct Connect data
types.

=item * Common Query Parameters: Parameters that all Query actions can
use.

=item * Common Errors: Client and server errors that all actions can
return.

=back










=head1 METHODS

=head2 AllocateConnectionOnInterconnect()

  Arguments described in: L<Paws::DirectConnect::AllocateConnectionOnInterconnect>

  Returns: L<Paws::DirectConnect::Connection>

  

Creates a hosted connection on an interconnect.

Allocates a VLAN number and a specified amount of bandwidth for use by
a hosted connection on the given interconnect.











=head2 AllocatePrivateVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::AllocatePrivateVirtualInterface>

  Returns: L<Paws::DirectConnect::VirtualInterface>

  

Provisions a private virtual interface to be owned by a different
customer.

The owner of a connection calls this function to provision a private
virtual interface which will be owned by another AWS customer.

Virtual interfaces created using this function must be confirmed by the
virtual interface owner by calling ConfirmPrivateVirtualInterface.
Until this step has been completed, the virtual interface will be in
'Confirming' state, and will not be available for handling traffic.











=head2 AllocatePublicVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::AllocatePublicVirtualInterface>

  Returns: L<Paws::DirectConnect::VirtualInterface>

  

Provisions a public virtual interface to be owned by a different
customer.

The owner of a connection calls this function to provision a public
virtual interface which will be owned by another AWS customer.

Virtual interfaces created using this function must be confirmed by the
virtual interface owner by calling ConfirmPublicVirtualInterface. Until
this step has been completed, the virtual interface will be in
'Confirming' state, and will not be available for handling traffic.











=head2 ConfirmConnection()

  Arguments described in: L<Paws::DirectConnect::ConfirmConnection>

  Returns: L<Paws::DirectConnect::ConfirmConnectionResponse>

  

Confirm the creation of a hosted connection on an interconnect.

Upon creation, the hosted connection is initially in the 'Ordering'
state, and will remain in this state until the owner calls
ConfirmConnection to confirm creation of the hosted connection.











=head2 ConfirmPrivateVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::ConfirmPrivateVirtualInterface>

  Returns: L<Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse>

  

Accept ownership of a private virtual interface created by another
customer.

After the virtual interface owner calls this function, the virtual
interface will be created and attached to the given virtual private
gateway, and will be available for handling traffic.











=head2 ConfirmPublicVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::ConfirmPublicVirtualInterface>

  Returns: L<Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse>

  

Accept ownership of a public virtual interface created by another
customer.

After the virtual interface owner calls this function, the specified
virtual interface will be created and made available for handling
traffic.











=head2 CreateConnection()

  Arguments described in: L<Paws::DirectConnect::CreateConnection>

  Returns: L<Paws::DirectConnect::Connection>

  

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











=head2 CreateInterconnect()

  Arguments described in: L<Paws::DirectConnect::CreateInterconnect>

  Returns: L<Paws::DirectConnect::Interconnect>

  

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

For each end customer, the AWS Direct Connect partner provisions a
connection on their interconnect by calling
AllocateConnectionOnInterconnect. The end customer can then connect to
AWS resources by creating a virtual interface on their connection,
using the VLAN assigned to them by the AWS Direct Connect partner.











=head2 CreatePrivateVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::CreatePrivateVirtualInterface>

  Returns: L<Paws::DirectConnect::VirtualInterface>

  

Creates a new private virtual interface. A virtual interface is the
VLAN that transports AWS Direct Connect traffic. A private virtual
interface supports sending traffic to a single virtual private cloud
(VPC).











=head2 CreatePublicVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::CreatePublicVirtualInterface>

  Returns: L<Paws::DirectConnect::VirtualInterface>

  

Creates a new public virtual interface. A virtual interface is the VLAN
that transports AWS Direct Connect traffic. A public virtual interface
supports sending traffic to public services of AWS such as Amazon
Simple Storage Service (Amazon S3).











=head2 DeleteConnection()

  Arguments described in: L<Paws::DirectConnect::DeleteConnection>

  Returns: L<Paws::DirectConnect::Connection>

  

Deletes the connection.

Deleting a connection only stops the AWS Direct Connect port hour and
data transfer charges. You need to cancel separately with the providers
any services or charges for cross-connects or network circuits that
connect you to the AWS Direct Connect location.











=head2 DeleteInterconnect()

  Arguments described in: L<Paws::DirectConnect::DeleteInterconnect>

  Returns: L<Paws::DirectConnect::DeleteInterconnectResponse>

  

Deletes the specified interconnect.











=head2 DeleteVirtualInterface()

  Arguments described in: L<Paws::DirectConnect::DeleteVirtualInterface>

  Returns: L<Paws::DirectConnect::DeleteVirtualInterfaceResponse>

  

Deletes a virtual interface.











=head2 DescribeConnections()

  Arguments described in: L<Paws::DirectConnect::DescribeConnections>

  Returns: L<Paws::DirectConnect::Connections>

  

Displays all connections in this region.

If a connection ID is provided, the call returns only that particular
connection.











=head2 DescribeConnectionsOnInterconnect()

  Arguments described in: L<Paws::DirectConnect::DescribeConnectionsOnInterconnect>

  Returns: L<Paws::DirectConnect::Connections>

  

Return a list of connections that have been provisioned on the given
interconnect.











=head2 DescribeInterconnects()

  Arguments described in: L<Paws::DirectConnect::DescribeInterconnects>

  Returns: L<Paws::DirectConnect::Interconnects>

  

Returns a list of interconnects owned by the AWS account.

If an interconnect ID is provided, it will only return this particular
interconnect.











=head2 DescribeLocations()

  Arguments described in: L<Paws::DirectConnect::DescribeLocations>

  Returns: L<Paws::DirectConnect::Locations>

  

Returns the list of AWS Direct Connect locations in the current AWS
region. These are the locations that may be selected when calling
CreateConnection or CreateInterconnect.











=head2 DescribeVirtualGateways()

  Arguments described in: L<Paws::DirectConnect::DescribeVirtualGateways>

  Returns: L<Paws::DirectConnect::VirtualGateways>

  

Returns a list of virtual private gateways owned by the AWS account.

You can create one or more AWS Direct Connect private virtual
interfaces linking to a virtual private gateway. A virtual private
gateway can be managed via Amazon Virtual Private Cloud (VPC) console
or the EC2 CreateVpnGateway action.











=head2 DescribeVirtualInterfaces()

  Arguments described in: L<Paws::DirectConnect::DescribeVirtualInterfaces>

  Returns: L<Paws::DirectConnect::VirtualInterfaces>

  

Displays all virtual interfaces for an AWS account. Virtual interfaces
deleted fewer than 15 minutes before DescribeVirtualInterfaces is
called are also returned. If a connection ID is included then only
virtual interfaces associated with this connection will be returned. If
a virtual interface ID is included then only a single virtual interface
will be returned.

A virtual interface (VLAN) transmits the traffic between the AWS Direct
Connect location and the customer.

If a connection ID is provided, only virtual interfaces provisioned on
the specified connection will be returned. If a virtual interface ID is
provided, only this particular virtual interface will be returned.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

