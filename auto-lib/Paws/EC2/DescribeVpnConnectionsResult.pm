
package Paws::EC2::DescribeVpnConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpnConnection/;
  has VpnConnections => (is => 'ro', isa => ArrayRef[EC2_VpnConnection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpnConnections' => {
                                     'class' => 'Paws::EC2::VpnConnection',
                                     'type' => 'ArrayRef[EC2_VpnConnection]'
                                   }
             },
  'NameInRequest' => {
                       'VpnConnections' => 'vpnConnectionSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnConnectionsResult

=head1 ATTRIBUTES


=head2 VpnConnections => ArrayRef[EC2_VpnConnection]

Information about one or more VPN connections.


=head2 _request_id => Str


=cut

