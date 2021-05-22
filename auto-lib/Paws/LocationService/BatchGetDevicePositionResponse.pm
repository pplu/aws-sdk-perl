
package Paws::LocationService::BatchGetDevicePositionResponse;
  use Moose;
  has DevicePositions => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::DevicePosition]', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchGetDevicePositionError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchGetDevicePositionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DevicePositions => ArrayRef[L<Paws::LocationService::DevicePosition>]

Contains device position details such as the device ID, position, and
timestamps for when the position was received and sampled.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchGetDevicePositionError>]

Contains error details for each device that failed to send its position
to the tracker resource.


=head2 _request_id => Str


=cut

