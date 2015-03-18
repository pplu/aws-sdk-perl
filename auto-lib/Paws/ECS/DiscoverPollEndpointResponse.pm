
package Paws::ECS::DiscoverPollEndpointResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has endpoint => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DiscoverPollEndpointResponse

=head1 ATTRIBUTES

=head2 endpoint => Str

  

The endpoint for the Amazon ECS agent to poll.











=cut

1;