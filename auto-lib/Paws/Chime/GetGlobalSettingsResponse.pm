
package Paws::Chime::GetGlobalSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_BusinessCallingSettings Chime_VoiceConnectorSettings/;
  has BusinessCalling => (is => 'ro', isa => Chime_BusinessCallingSettings);
  has VoiceConnector => (is => 'ro', isa => Chime_VoiceConnectorSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VoiceConnector' => {
                                     'class' => 'Paws::Chime::VoiceConnectorSettings',
                                     'type' => 'Chime_VoiceConnectorSettings'
                                   },
               'BusinessCalling' => {
                                      'class' => 'Paws::Chime::BusinessCallingSettings',
                                      'type' => 'Chime_BusinessCallingSettings'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetGlobalSettingsResponse

=head1 ATTRIBUTES


=head2 BusinessCalling => Chime_BusinessCallingSettings

The Amazon Chime Business Calling settings.


=head2 VoiceConnector => Chime_VoiceConnectorSettings

The Amazon Chime Voice Connector settings.


=head2 _request_id => Str


=cut

