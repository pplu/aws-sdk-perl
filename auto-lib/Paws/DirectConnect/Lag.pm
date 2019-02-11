
package Paws::DirectConnect::Lag;
  use Moose;
  has AllowsHostedConnections => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowsHostedConnections' );
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDevice' );
  has AwsDeviceV2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDeviceV2' );
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Connection]', traits => ['NameInRequest'], request_name => 'connections' );
  has ConnectionsBandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionsBandwidth' );
  has HasLogicalRedundancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hasLogicalRedundancy' );
  has JumboFrameCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'jumboFrameCapable' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has LagName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagName' );
  has LagState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagState' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has MinimumLinks => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumLinks' );
  has NumberOfConnections => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfConnections' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Lag

=head1 ATTRIBUTES


=head2 AllowsHostedConnections => Bool

Indicates whether the LAG can host other connections.


=head2 AwsDevice => Str

The Direct Connect endpoint that hosts the LAG.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint that hosts the LAG.


=head2 Connections => ArrayRef[L<Paws::DirectConnect::Connection>]

The connections bundled by the LAG.


=head2 ConnectionsBandwidth => Str

The individual bandwidth of the physical connections bundled by the
LAG. The possible values are 1Gbps and 10Gbps.


=head2 HasLogicalRedundancy => Str

Indicates whether the LAG supports a secondary BGP peer in the same
address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames (9001 MTU) are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LagName => Str

The name of the LAG.


=head2 LagState => Str

The state of the LAG. The following are the possible values:

=over

=item *

C<requested>: The initial state of a LAG. The LAG stays in the
requested state until the Letter of Authorization (LOA) is available.

=item *

C<pending>: The LAG has been approved and is being initialized.

=item *

C<available>: The network link is established and the LAG is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The LAG is being deleted.

=item *

C<deleted>: The LAG is deleted.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">
=head2 Location => Str

The location of the LAG.


=head2 MinimumLinks => Int

The minimum number of physical connections that must be operational for
the LAG itself to be operational.


=head2 NumberOfConnections => Int

The number of physical connections bundled by the LAG, up to a maximum
of 10.


=head2 OwnerAccount => Str

The ID of the AWS account that owns the LAG.


=head2 Region => Str

The AWS Region where the connection is located.


=head2 _request_id => Str


=cut

1;