
package Paws::EC2::CreateVpnGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpnGateway/;
  has VpnGateway => (is => 'ro', isa => EC2_VpnGateway);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpnGateway' => {
                                 'class' => 'Paws::EC2::VpnGateway',
                                 'type' => 'EC2_VpnGateway'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VpnGateway' => 'vpnGateway'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnGatewayResult

=head1 ATTRIBUTES


=head2 VpnGateway => EC2_VpnGateway

Information about the virtual private gateway.


=head2 _request_id => Str


=cut

