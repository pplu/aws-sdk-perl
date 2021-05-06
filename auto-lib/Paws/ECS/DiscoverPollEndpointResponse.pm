
package Paws::ECS::DiscoverPollEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint' );
  has TelemetryEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'telemetryEndpoint' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DiscoverPollEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => Str

The endpoint for the Amazon ECS agent to poll.


=head2 TelemetryEndpoint => Str

The telemetry endpoint for the Amazon ECS agent.


=head2 _request_id => Str


=cut

1;