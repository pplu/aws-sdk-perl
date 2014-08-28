
package Aws::SNS::ListEndpointsByPlatformApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;