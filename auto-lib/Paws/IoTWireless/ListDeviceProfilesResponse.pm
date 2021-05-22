
package Paws::IoTWireless::ListDeviceProfilesResponse;
  use Moose;
  has DeviceProfileList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::DeviceProfile]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListDeviceProfilesResponse

=head1 ATTRIBUTES


=head2 DeviceProfileList => ArrayRef[L<Paws::IoTWireless::DeviceProfile>]

The list of device profiles.


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 _request_id => Str


=cut

