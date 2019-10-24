
package Paws::EC2::UnassignIpv6AddressesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has UnassignedIpv6Addresses => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnassignedIpv6Addresses' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'UnassignedIpv6Addresses' => 'unassignedIpv6Addresses',
                       'NetworkInterfaceId' => 'networkInterfaceId'
                     }
}
;
    return $Params_map;
  }

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

