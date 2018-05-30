
package Paws::IoT1ClickDevices::DescribeDeviceResponse;
  use Moose;
  has DeviceDescription => (is => 'ro', isa => 'Paws::IoT1ClickDevices::DeviceDescription', traits => ['NameInRequest'], request_name => 'deviceDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DescribeDeviceResponse

=head1 ATTRIBUTES


=head2 DeviceDescription => L<Paws::IoT1ClickDevices::DeviceDescription>

Device details.


=head2 _request_id => Str


=cut

