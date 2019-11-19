
package Paws::EC2::AssignIpv6AddressesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has AssignedIpv6Addresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AssignedIpv6Addresses' => 'assignedIpv6Addresses',
                       'NetworkInterfaceId' => 'networkInterfaceId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'AssignedIpv6Addresses' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          }
             }
}
;
    return $Params_map;
  }

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

