
package Paws::Chime::UpdateVoiceConnectorGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_VoiceConnectorGroup/;
  has VoiceConnectorGroup => (is => 'ro', isa => Chime_VoiceConnectorGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceConnectorGroup' => {
                                          'type' => 'Chime_VoiceConnectorGroup',
                                          'class' => 'Paws::Chime::VoiceConnectorGroup'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateVoiceConnectorGroupResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorGroup => Chime_VoiceConnectorGroup

The updated Amazon Chime Voice Connector group details.


=head2 _request_id => Str


=cut

