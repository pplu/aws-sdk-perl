
package Paws::DeviceFarm::ListDevicePoolsResult;
  use Moose;
  has DevicePools => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DevicePool]', traits => ['NameInRequest'], request_name => 'devicePools' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicePoolsResult

=head1 ATTRIBUTES


=head2 DevicePools => ArrayRef[L<Paws::DeviceFarm::DevicePool>]

Information about the device pools.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;