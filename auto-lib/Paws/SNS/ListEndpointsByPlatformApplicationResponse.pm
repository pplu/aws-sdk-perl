
package Paws::SNS::ListEndpointsByPlatformApplicationResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;