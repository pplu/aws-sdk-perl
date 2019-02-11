
package Paws::EC2::TerminateClientVpnConnectionsResult;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest',]);
  has ConnectionStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TerminateConnectionStatus]', request_name => 'connectionStatuses', traits => ['NameInRequest',]);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TerminateClientVpnConnectionsResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.


=head2 ConnectionStatuses => ArrayRef[L<Paws::EC2::TerminateConnectionStatus>]

The current state of the client connections.


=head2 Username => Str

The user who established the terminated client connections.


=head2 _request_id => Str


=cut

