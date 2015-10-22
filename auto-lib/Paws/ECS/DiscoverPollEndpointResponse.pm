
package Paws::ECS::DiscoverPollEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'endpoint' );
  has TelemetryEndpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'telemetryEndpoint' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DiscoverPollEndpointResponse

=head1 ATTRIBUTES

=head2 Endpoint => Str

  The endpoint for the Amazon ECS agent to poll.
=head2 TelemetryEndpoint => Str

  The telemetry endpoint for the Amazon ECS agent.


=cut

1;