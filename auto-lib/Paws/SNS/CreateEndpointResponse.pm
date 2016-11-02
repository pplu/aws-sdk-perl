
package Paws::SNS::CreateEndpointResponse;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointArn => Str

EndpointArn returned from CreateEndpoint action.


=head2 _request_id => Str


=cut

