
package Aws::SNS::CreatePlatformEndpointResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EndpointArn => (is => 'ro', isa => 'Str');

}
1;