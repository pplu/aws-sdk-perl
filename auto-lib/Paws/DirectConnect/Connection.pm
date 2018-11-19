
package Paws::DirectConnect::Connection;
  use Moose;
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDevice' );
  has AwsDeviceV2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDeviceV2' );
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' );
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionState' );
  has HasLogicalRedundancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hasLogicalRedundancy' );
  has JumboFrameCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'jumboFrameCapable' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has LoaIssueTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaIssueTime' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has PartnerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnerName' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connection

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 Bandwidth => Str

The bandwidth of the connection.


=head2 ConnectionId => Str

The ID of the connection.


=head2 ConnectionName => Str

The name of the connection.


=head2 ConnectionState => Str

The state of the connection. The following are the possible values:

=over

=item *

C<ordering>: The initial state of a hosted connection provisioned on an
interconnect. The connection stays in the ordering state until the
owner of the hosted connection confirms or declines the connection
order.

=item *

C<requested>: The initial state of a standard connection. The
connection stays in the requested state until the Letter of
Authorization (LOA) is sent to the customer.

=item *

C<pending>: The connection has been approved and is being initialized.

=item *

C<available>: The network link is up and the connection is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The connection is being deleted.

=item *

C<deleted>: The connection has been deleted.

=item *

C<rejected>: A hosted connection in the C<ordering> state enters the
C<rejected> state if it is deleted by the customer.

=back


Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">
=head2 HasLogicalRedundancy => Str

Indicates whether the connection supports a secondary BGP peer in the
same address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames (9001 MTU) are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LoaIssueTime => Str

The time of the most recent call to DescribeLoa for this connection.


=head2 Location => Str

The location of the connection.


=head2 OwnerAccount => Str

The ID of the AWS account that owns the connection.


=head2 PartnerName => Str

The name of the AWS Direct Connect service provider associated with the
connection.


=head2 Region => Str

The AWS Region where the connection is located.


=head2 Vlan => Int

The ID of the VLAN.


=head2 _request_id => Str


=cut

1;