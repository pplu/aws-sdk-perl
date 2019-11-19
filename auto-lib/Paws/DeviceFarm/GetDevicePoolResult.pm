# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetDevicePoolResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DevicePool/;
  has DevicePool => (is => 'ro', isa => DeviceFarm_DevicePool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DevicePool' => 'devicePool'
                     },
  'types' => {
               'DevicePool' => {
                                 'class' => 'Paws::DeviceFarm::DevicePool',
                                 'type' => 'DeviceFarm_DevicePool'
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

Paws::DeviceFarm::GetDevicePoolResult

=head1 ATTRIBUTES


=head2 DevicePool => DeviceFarm_DevicePool

An object containing information about the requested device pool.


=head2 _request_id => Str


=cut

1;