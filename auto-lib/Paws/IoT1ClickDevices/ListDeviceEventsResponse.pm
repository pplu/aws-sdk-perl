
package Paws::IoT1ClickDevices::ListDeviceEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceEvent/;
  has Events => (is => 'ro', isa => ArrayRef[IoT1ClickDevices_DeviceEvent]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Events' => {
                             'class' => 'Paws::IoT1ClickDevices::DeviceEvent',
                             'type' => 'ArrayRef[IoT1ClickDevices_DeviceEvent]'
                           }
             },
  'NameInRequest' => {
                       'Events' => 'events',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDeviceEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[IoT1ClickDevices_DeviceEvent]

An array of zero or more elements describing the event(s) associated
with the device.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

