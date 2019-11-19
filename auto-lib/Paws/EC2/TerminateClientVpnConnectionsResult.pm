
package Paws::EC2::TerminateClientVpnConnectionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TerminateConnectionStatus/;
  has ClientVpnEndpointId => (is => 'ro', isa => Str);
  has ConnectionStatuses => (is => 'ro', isa => ArrayRef[EC2_TerminateConnectionStatus]);
  has Username => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ConnectionStatuses' => 'connectionStatuses',
                       'Username' => 'username',
                       'ClientVpnEndpointId' => 'clientVpnEndpointId'
                     },
  'types' => {
               'Username' => {
                               'type' => 'Str'
                             },
               'ConnectionStatuses' => {
                                         'type' => 'ArrayRef[EC2_TerminateConnectionStatus]',
                                         'class' => 'Paws::EC2::TerminateConnectionStatus'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientVpnEndpointId' => {
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

Paws::EC2::TerminateClientVpnConnectionsResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.


=head2 ConnectionStatuses => ArrayRef[EC2_TerminateConnectionStatus]

The current state of the client connections.


=head2 Username => Str

The user who established the terminated client connections.


=head2 _request_id => Str


=cut

