# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListDeviceInstancesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DeviceInstance/;
  has DeviceInstances => (is => 'ro', isa => ArrayRef[DeviceFarm_DeviceInstance]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceInstances' => {
                                      'class' => 'Paws::DeviceFarm::DeviceInstance',
                                      'type' => 'ArrayRef[DeviceFarm_DeviceInstance]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeviceInstances' => 'deviceInstances',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDeviceInstancesResult

=head1 ATTRIBUTES


=head2 DeviceInstances => ArrayRef[DeviceFarm_DeviceInstance]

An object containing information about your device instances.


=head2 NextToken => Str

An identifier that can be used in the next call to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

1;