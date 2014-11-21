
package Aws::SNS::CreatePlatformApplicationResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
1;