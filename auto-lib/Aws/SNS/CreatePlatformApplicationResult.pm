
package Aws::SNS::CreatePlatformApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
1;