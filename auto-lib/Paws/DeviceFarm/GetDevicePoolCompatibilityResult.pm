# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetDevicePoolCompatibilityResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DevicePoolCompatibilityResult/;
  has CompatibleDevices => (is => 'ro', isa => ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]);
  has IncompatibleDevices => (is => 'ro', isa => ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CompatibleDevices' => {
                                        'class' => 'Paws::DeviceFarm::DevicePoolCompatibilityResult',
                                        'type' => 'ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]'
                                      },
               'IncompatibleDevices' => {
                                          'class' => 'Paws::DeviceFarm::DevicePoolCompatibilityResult',
                                          'type' => 'ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CompatibleDevices' => 'compatibleDevices',
                       'IncompatibleDevices' => 'incompatibleDevices'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolCompatibilityResult

=head1 ATTRIBUTES


=head2 CompatibleDevices => ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]

Information about compatible devices.


=head2 IncompatibleDevices => ArrayRef[DeviceFarm_DevicePoolCompatibilityResult]

Information about incompatible devices.


=head2 _request_id => Str


=cut

1;