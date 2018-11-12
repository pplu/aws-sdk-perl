
package Paws::AlexaForBusiness::RegisterAVSDeviceResponse;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::RegisterAVSDeviceResponse

=head1 ATTRIBUTES


=head2 DeviceArn => Str

The ARN of the device.


=head2 _request_id => Str


=cut

1;