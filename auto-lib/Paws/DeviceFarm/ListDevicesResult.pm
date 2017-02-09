
package Paws::DeviceFarm::ListDevicesResult;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Device]', traits => ['NameInRequest'], request_name => 'devices' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicesResult

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::DeviceFarm::Device>]

Information about the devices.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;