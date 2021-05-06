
package Paws::Comprehend::ListEndpointsResponse;
  use Moose;
  has EndpointPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EndpointProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEndpointsResponse

=head1 ATTRIBUTES


=head2 EndpointPropertiesList => ArrayRef[L<Paws::Comprehend::EndpointProperties>]

Displays a list of endpoint properties being retrieved by the service
in response to the request.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;