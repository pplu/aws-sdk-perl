
package Paws::IoTWireless::SendDataToWirelessDeviceResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::SendDataToWirelessDeviceResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

The ID of the message sent to the wireless device.


=head2 _request_id => Str


=cut

