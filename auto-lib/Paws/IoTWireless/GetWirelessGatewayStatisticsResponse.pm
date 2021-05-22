
package Paws::IoTWireless::GetWirelessGatewayStatisticsResponse;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Str');
  has LastUplinkReceivedAt => (is => 'ro', isa => 'Str');
  has WirelessGatewayId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayStatisticsResponse

=head1 ATTRIBUTES


=head2 ConnectionStatus => Str

The connection status of the wireless gateway.

Valid values are: C<"Connected">, C<"Disconnected">
=head2 LastUplinkReceivedAt => Str

The date and time when the most recent uplink was received.


=head2 WirelessGatewayId => Str

The ID of the wireless gateway.


=head2 _request_id => Str


=cut

