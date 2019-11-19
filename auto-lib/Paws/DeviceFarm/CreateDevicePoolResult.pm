# Generated from json/callresult_class.tt

package Paws::DeviceFarm::CreateDevicePoolResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DevicePool/;
  has DevicePool => (is => 'ro', isa => DeviceFarm_DevicePool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DevicePool' => {
                                 'class' => 'Paws::DeviceFarm::DevicePool',
                                 'type' => 'DeviceFarm_DevicePool'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DevicePool' => 'devicePool'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateDevicePoolResult

=head1 ATTRIBUTES


=head2 DevicePool => DeviceFarm_DevicePool

The newly created device pool.


=head2 _request_id => Str


=cut

1;