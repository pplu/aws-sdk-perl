
package Paws::LocationService::GetDevicePositionResponse;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has ReceivedTime => (is => 'ro', isa => 'Str', required => 1);
  has SampleTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetDevicePositionResponse

=head1 ATTRIBUTES


=head2 DeviceId => Str

The device whose position you retrieved.


=head2 B<REQUIRED> Position => ArrayRef[Num]

The last known device position.


=head2 B<REQUIRED> ReceivedTime => Str

The timestamp for when the tracker resource received the device
position in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> SampleTime => Str

The timestamp at which the device's position was determined. Uses ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

