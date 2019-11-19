# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListDevicePoolsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DevicePool/;
  has DevicePools => (is => 'ro', isa => ArrayRef[DeviceFarm_DevicePool]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DevicePools' => 'devicePools'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DevicePools' => {
                                  'type' => 'ArrayRef[DeviceFarm_DevicePool]',
                                  'class' => 'Paws::DeviceFarm::DevicePool'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicePoolsResult

=head1 ATTRIBUTES


=head2 DevicePools => ArrayRef[DeviceFarm_DevicePool]

Information about the device pools.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;