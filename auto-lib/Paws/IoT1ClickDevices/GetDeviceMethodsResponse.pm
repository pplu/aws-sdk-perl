
package Paws::IoT1ClickDevices::GetDeviceMethodsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceMethod/;
  has DeviceMethods => (is => 'ro', isa => ArrayRef[IoT1ClickDevices_DeviceMethod]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeviceMethods' => {
                                    'class' => 'Paws::IoT1ClickDevices::DeviceMethod',
                                    'type' => 'ArrayRef[IoT1ClickDevices_DeviceMethod]'
                                  }
             },
  'NameInRequest' => {
                       'DeviceMethods' => 'deviceMethods'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::GetDeviceMethodsResponse

=head1 ATTRIBUTES


=head2 DeviceMethods => ArrayRef[IoT1ClickDevices_DeviceMethod]

List of available device APIs.


=head2 _request_id => Str


=cut

