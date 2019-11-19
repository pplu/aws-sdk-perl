
package Paws::EC2::DescribeVpnGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpnGateway/;
  has VpnGateways => (is => 'ro', isa => ArrayRef[EC2_VpnGateway]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VpnGateways' => 'vpnGatewaySet'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpnGateways' => {
                                  'type' => 'ArrayRef[EC2_VpnGateway]',
                                  'class' => 'Paws::EC2::VpnGateway'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnGatewaysResult

=head1 ATTRIBUTES


=head2 VpnGateways => ArrayRef[EC2_VpnGateway]

Information about one or more virtual private gateways.


=head2 _request_id => Str


=cut

