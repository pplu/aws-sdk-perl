# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetDeviceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Device/;
  has Device => (is => 'ro', isa => DeviceFarm_Device);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Device' => {
                             'class' => 'Paws::DeviceFarm::Device',
                             'type' => 'DeviceFarm_Device'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Device' => 'device'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceResult

=head1 ATTRIBUTES


=head2 Device => DeviceFarm_Device

An object containing information about the requested device.


=head2 _request_id => Str


=cut

1;