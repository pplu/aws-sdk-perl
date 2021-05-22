
package Paws::IoTWireless::GetWirelessGatewayFirmwareInformationResponse;
  use Moose;
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANGatewayCurrentVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayFirmwareInformationResponse

=head1 ATTRIBUTES


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANGatewayCurrentVersion>

Information about the wireless gateway's firmware.


=head2 _request_id => Str


=cut

