
package Paws::Comprehend::CreateEndpointResponse;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointArn => Str

The Amazon Resource Number (ARN) of the endpoint being created.


=head2 _request_id => Str


=cut

1;