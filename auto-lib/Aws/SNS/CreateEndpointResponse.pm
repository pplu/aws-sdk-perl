
package Aws::SNS::CreateEndpointResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has EndpointArn => (is => 'ro', isa => 'Str');

}
1;