
package Paws::EC2::CreateClientVpnEndpointResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnEndpointStatus/;
  has ClientVpnEndpointId => (is => 'ro', isa => Str);
  has DnsName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_ClientVpnEndpointStatus);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DnsName' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnEndpointStatus',
                             'type' => 'EC2_ClientVpnEndpointStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientVpnEndpointId' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'DnsName' => 'dnsName',
                       'Status' => 'status',
                       'ClientVpnEndpointId' => 'clientVpnEndpointId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnEndpointResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.


=head2 DnsName => Str

The DNS name to be used by clients when establishing their VPN session.


=head2 Status => EC2_ClientVpnEndpointStatus

The current state of the Client VPN endpoint.


=head2 _request_id => Str


=cut

