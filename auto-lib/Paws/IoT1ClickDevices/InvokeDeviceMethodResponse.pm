
package Paws::IoT1ClickDevices::InvokeDeviceMethodResponse;
  use Moose;
  has DeviceMethodResponse => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceMethodResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::InvokeDeviceMethodResponse

=head1 ATTRIBUTES


=head2 DeviceMethodResponse => Str

A JSON encoded string containing the device method response.


=head2 _request_id => Str


=cut

