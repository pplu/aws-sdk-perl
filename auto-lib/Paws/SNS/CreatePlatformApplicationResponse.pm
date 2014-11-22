
package Paws::SNS::CreatePlatformApplicationResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
1;