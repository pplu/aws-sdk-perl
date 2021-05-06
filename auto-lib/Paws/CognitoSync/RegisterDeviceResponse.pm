
package Paws::CognitoSync::RegisterDeviceResponse;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::RegisterDeviceResponse

=head1 ATTRIBUTES


=head2 DeviceId => Str

The unique ID generated for this device by Cognito.


=head2 _request_id => Str


=cut

