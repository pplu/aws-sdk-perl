
package Paws::EC2::UnassignIpv6AddressesResult;
  use Moose;
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceId', traits => ['Unwrapped',]);
  has UnassignedIpv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'unassignedIpv6Addresses', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnassignIpv6AddressesResult

=head1 ATTRIBUTES


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 UnassignedIpv6Addresses => ArrayRef[Str|Undef]

The IPv6 addresses that have been unassigned from the network
interface.


=head2 _request_id => Str


=cut

