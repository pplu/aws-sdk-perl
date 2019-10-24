
package Paws::IoT1ClickDevices::ListDevicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceDescription/;
  has Devices => (is => 'ro', isa => ArrayRef[IoT1ClickDevices_DeviceDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Devices' => {
                              'class' => 'Paws::IoT1ClickDevices::DeviceDescription',
                              'type' => 'ArrayRef[IoT1ClickDevices_DeviceDescription]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Devices' => 'devices'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[IoT1ClickDevices_DeviceDescription]

A list of devices.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

