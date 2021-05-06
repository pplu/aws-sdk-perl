
package Paws::IoT1ClickDevices::ListDeviceEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::IoT1ClickDevices::DeviceEvent]', traits => ['NameInRequest'], request_name => 'events');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDeviceEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::IoT1ClickDevices::DeviceEvent>]

An array of zero or more elements describing the event(s) associated
with the device.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

