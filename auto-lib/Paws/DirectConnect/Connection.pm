
package Paws::DirectConnect::Connection;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bandwidth' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionId' );
  has ConnectionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionName' );
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionState' );
  has Location => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'location' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAccount' );
  has PartnerName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'partnerName' );
  has Region => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'region' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'vlan' );


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

  
=head2 Location => Str

  
=head2 OwnerAccount => Str

  
=head2 PartnerName => Str

  
=head2 Region => Str

  
=head2 Vlan => Int

  


=cut

1;