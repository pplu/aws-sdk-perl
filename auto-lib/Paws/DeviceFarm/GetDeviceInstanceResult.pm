# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetDeviceInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DeviceInstance/;
  has DeviceInstance => (is => 'ro', isa => DeviceFarm_DeviceInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeviceInstance' => 'deviceInstance'
                     },
  'types' => {
               'DeviceInstance' => {
                                     'type' => 'DeviceFarm_DeviceInstance',
                                     'class' => 'Paws::DeviceFarm::DeviceInstance'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceInstanceResult

=head1 ATTRIBUTES


=head2 DeviceInstance => DeviceFarm_DeviceInstance

An object containing information about your device instance.


=head2 _request_id => Str


=cut

1;