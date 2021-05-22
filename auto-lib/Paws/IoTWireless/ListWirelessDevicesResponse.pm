
package Paws::IoTWireless::ListWirelessDevicesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WirelessDeviceList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessDeviceStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessDevicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 WirelessDeviceList => ArrayRef[L<Paws::IoTWireless::WirelessDeviceStatistics>]

The ID of the wireless device.


=head2 _request_id => Str


=cut

