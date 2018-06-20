
package Paws::IoT1ClickDevices::GetDeviceMethodsResponse;
  use Moose;
  has DeviceMethods => (is => 'ro', isa => 'ArrayRef[Paws::IoT1ClickDevices::DeviceMethod]', traits => ['NameInRequest'], request_name => 'deviceMethods');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::GetDeviceMethodsResponse

=head1 ATTRIBUTES


=head2 DeviceMethods => ArrayRef[L<Paws::IoT1ClickDevices::DeviceMethod>]

List of available device APIs.


=head2 _request_id => Str


=cut

