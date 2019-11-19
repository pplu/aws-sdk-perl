
package Paws::IoT1ClickDevices::InvokeDeviceMethodResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw//;
  has DeviceMethodResponse => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeviceMethodResponse' => 'deviceMethodResponse'
                     },
  'types' => {
               'DeviceMethodResponse' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::InvokeDeviceMethodResponse

=head1 ATTRIBUTES


=head2 DeviceMethodResponse => Str

A JSON encoded string containing the device method response.


=head2 _request_id => Str


=cut

