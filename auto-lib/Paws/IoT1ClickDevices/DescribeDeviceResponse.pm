
package Paws::IoT1ClickDevices::DescribeDeviceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceDescription/;
  has DeviceDescription => (is => 'ro', isa => IoT1ClickDevices_DeviceDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeviceDescription' => {
                                        'class' => 'Paws::IoT1ClickDevices::DeviceDescription',
                                        'type' => 'IoT1ClickDevices_DeviceDescription'
                                      }
             },
  'NameInRequest' => {
                       'DeviceDescription' => 'deviceDescription'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DescribeDeviceResponse

=head1 ATTRIBUTES


=head2 DeviceDescription => IoT1ClickDevices_DeviceDescription

Device details.


=head2 _request_id => Str


=cut

