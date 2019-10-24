
package Paws::Chime::CreateVoiceConnectorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_VoiceConnector/;
  has VoiceConnector => (is => 'ro', isa => Chime_VoiceConnector);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VoiceConnector' => {
                                     'class' => 'Paws::Chime::VoiceConnector',
                                     'type' => 'Chime_VoiceConnector'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateVoiceConnectorResponse

=head1 ATTRIBUTES


=head2 VoiceConnector => Chime_VoiceConnector

The Amazon Chime Voice Connector details.


=head2 _request_id => Str


=cut

