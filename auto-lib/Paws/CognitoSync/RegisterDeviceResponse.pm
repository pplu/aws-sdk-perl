
package Paws::CognitoSync::RegisterDeviceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeviceId => (is => 'ro', isa => 'Str');

}
1;