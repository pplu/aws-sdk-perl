
package Paws::DirectConnect::Lag;
  use Moose;
  has AllowsHostedConnections => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'allowsHostedConnections' );
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'awsDevice' );
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Connection]', traits => ['Unwrapped'], xmlname => 'connections' );
  has ConnectionsBandwidth => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionsBandwidth' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lagId' );
  has LagName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lagName' );
  has LagState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lagState' );
  has Location => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'location' );
  has MinimumLinks => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'minimumLinks' );
  has NumberOfConnections => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'numberOfConnections' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAccount' );
  has Region => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'region' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Lag

=head1 ATTRIBUTES


=head2 AllowsHostedConnections => Bool

Indicates whether the LAG can host other connections.

This is intended for use by AWS Direct Connect partners only.


=head2 AwsDevice => Str

The AWS Direct Connection endpoint that hosts the LAG.


=head2 Connections => ArrayRef[L<Paws::DirectConnect::Connection>]

A list of connections bundled by this LAG.


=head2 ConnectionsBandwidth => Str

The individual bandwidth of the physical connections bundled by the
LAG.

Available values: 1Gbps, 10Gbps


=head2 LagId => Str




=head2 LagName => Str

The name of the LAG.


=head2 LagState => Str



Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">
=head2 Location => Str




=head2 MinimumLinks => Int

The minimum number of physical connections that must be operational for
the LAG itself to be operational. If the number of operational
connections drops below this setting, the LAG state changes to C<down>.
This value can help to ensure that a LAG is not overutilized if a
significant number of its bundled connections go down.


=head2 NumberOfConnections => Int

The number of physical connections bundled by the LAG, up to a maximum
of 10.


=head2 OwnerAccount => Str

The owner of the LAG.


=head2 Region => Str




=head2 _request_id => Str


=cut

1;