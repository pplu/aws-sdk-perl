
package Paws::EC2::AssignIpv6AddressesResult;
  use Moose;
  has AssignedIpv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'assignedIpv6Addresses', traits => ['NameInRequest',]);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignIpv6AddressesResult

=head1 ATTRIBUTES


=head2 AssignedIpv6Addresses => ArrayRef[Str|Undef]

The IPv6 addresses assigned to the network interface.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 _request_id => Str


=cut

