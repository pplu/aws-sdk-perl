
package Paws::Comprehend::DescribeEndpointResponse;
  use Moose;
  has EndpointProperties => (is => 'ro', isa => 'Paws::Comprehend::EndpointProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointProperties => L<Paws::Comprehend::EndpointProperties>

Describes information associated with the specific endpoint.


=head2 _request_id => Str


=cut

1;