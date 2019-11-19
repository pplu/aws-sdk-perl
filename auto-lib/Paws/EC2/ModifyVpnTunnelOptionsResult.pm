
package Paws::EC2::ModifyVpnTunnelOptionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpnConnection/;
  has VpnConnection => (is => 'ro', isa => EC2_VpnConnection);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VpnConnection' => 'vpnConnection'
                     },
  'types' => {
               'VpnConnection' => {
                                    'type' => 'EC2_VpnConnection',
                                    'class' => 'Paws::EC2::VpnConnection'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpnTunnelOptionsResult

=head1 ATTRIBUTES


=head2 VpnConnection => EC2_VpnConnection




=head2 _request_id => Str


=cut

