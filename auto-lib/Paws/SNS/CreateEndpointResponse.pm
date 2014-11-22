
package Paws::SNS::CreateEndpointResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has EndpointArn => (is => 'ro', isa => 'Str');

}
1;