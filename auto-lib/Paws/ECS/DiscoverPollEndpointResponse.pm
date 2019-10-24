# Generated from json/callresult_class.tt

package Paws::ECS::DiscoverPollEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw//;
  has Endpoint => (is => 'ro', isa => Str);
  has TelemetryEndpoint => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TelemetryEndpoint' => {
                                        'type' => 'Str'
                                      },
               'Endpoint' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'TelemetryEndpoint' => 'telemetryEndpoint',
                       'Endpoint' => 'endpoint'
                     }
}
;
    return $Params_map;
  }


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