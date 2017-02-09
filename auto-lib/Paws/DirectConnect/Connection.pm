
package Paws::DirectConnect::Connection;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionName' );
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionState' );
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


=head2 Bandwidth => Str

Bandwidth of the connection.

Example: 1Gbps (for regular connections), or 500Mbps (for hosted
connections)

Default: None


=head2 ConnectionId => Str




=head2 ConnectionName => Str




=head2 ConnectionState => Str



Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">
=head2 LoaIssueTime => Str

The time of the most recent call to DescribeConnectionLoa for this
Connection.


=head2 Location => Str




=head2 OwnerAccount => Str

The AWS account that will own the new connection.


=head2 PartnerName => Str

The name of the AWS Direct Connect service provider associated with the
connection.


=head2 Region => Str




=head2 Vlan => Int




=head2 _request_id => Str


=cut

1;