
package Paws::SNS::CreateEndpointResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has EndpointArn => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateEndpointResponse

=head1 ATTRIBUTES

=head2 EndpointArn => Str

  

EndpointArn returned from CreateEndpoint action.











=cut

