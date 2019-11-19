
package Paws::Chime::PutVoiceConnectorStreamingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_StreamingConfiguration/;
  has StreamingConfiguration => (is => 'ro', isa => Chime_StreamingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamingConfiguration' => {
                                             'class' => 'Paws::Chime::StreamingConfiguration',
                                             'type' => 'Chime_StreamingConfiguration'
                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorStreamingConfigurationResponse

=head1 ATTRIBUTES


=head2 StreamingConfiguration => Chime_StreamingConfiguration

The updated streaming configuration details.


=head2 _request_id => Str


=cut

