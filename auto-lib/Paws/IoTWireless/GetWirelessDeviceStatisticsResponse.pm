
package Paws::IoTWireless::GetWirelessDeviceStatisticsResponse;
  use Moose;
  has LastUplinkReceivedAt => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANDeviceMetadata');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkDeviceMetadata');
  has WirelessDeviceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessDeviceStatisticsResponse

=head1 ATTRIBUTES


=head2 LastUplinkReceivedAt => Str

The date and time when the most recent uplink was received.


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANDeviceMetadata>

Information about the wireless device's operations.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkDeviceMetadata>

MetaData for Sidewalk device.


=head2 WirelessDeviceId => Str

The ID of the wireless device.


=head2 _request_id => Str


=cut

