
package Paws::EC2::AssignPrivateIpAddressesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AssignedPrivateIpAddress/;
  has AssignedPrivateIpAddresses => (is => 'ro', isa => ArrayRef[EC2_AssignedPrivateIpAddress]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssignedPrivateIpAddresses' => {
                                                 'class' => 'Paws::EC2::AssignedPrivateIpAddress',
                                                 'type' => 'ArrayRef[EC2_AssignedPrivateIpAddress]'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'AssignedPrivateIpAddresses' => 'assignedPrivateIpAddressesSet',
                       'NetworkInterfaceId' => 'networkInterfaceId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignPrivateIpAddressesResult

=head1 ATTRIBUTES


=head2 AssignedPrivateIpAddresses => ArrayRef[EC2_AssignedPrivateIpAddress]

The private IP addresses assigned to the network interface.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 _request_id => Str


=cut

