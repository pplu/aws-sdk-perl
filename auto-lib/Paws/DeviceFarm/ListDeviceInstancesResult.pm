
package Paws::DeviceFarm::ListDeviceInstancesResult;
  use Moose;
  has DeviceInstances => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DeviceInstance]', traits => ['NameInRequest'], request_name => 'deviceInstances' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDeviceInstancesResult

=head1 ATTRIBUTES


=head2 DeviceInstances => ArrayRef[L<Paws::DeviceFarm::DeviceInstance>]

An object containing information about your device instances.


=head2 NextToken => Str

An identifier that can be used in the next call to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

1;