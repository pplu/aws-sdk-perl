# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListDevicesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Device/;
  has Devices => (is => 'ro', isa => ArrayRef[DeviceFarm_Device]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Devices' => {
                              'class' => 'Paws::DeviceFarm::Device',
                              'type' => 'ArrayRef[DeviceFarm_Device]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Devices' => 'devices'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicesResult

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[DeviceFarm_Device]

Information about the devices.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;