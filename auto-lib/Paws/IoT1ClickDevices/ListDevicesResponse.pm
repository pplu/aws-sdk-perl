
package Paws::IoT1ClickDevices::ListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::IoT1ClickDevices::DeviceDescription]', traits => ['NameInRequest'], request_name => 'devices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::IoT1ClickDevices::DeviceDescription>]

A list of devices.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

