
package Paws::Chime::PutVoiceConnectorStreamingConfigurationResponse;
  use Moose;
  has StreamingConfiguration => (is => 'ro', isa => 'Paws::Chime::StreamingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorStreamingConfigurationResponse

=head1 ATTRIBUTES


=head2 StreamingConfiguration => L<Paws::Chime::StreamingConfiguration>

The updated streaming configuration details.


=head2 _request_id => Str


=cut

