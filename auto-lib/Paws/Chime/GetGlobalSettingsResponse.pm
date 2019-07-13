
package Paws::Chime::GetGlobalSettingsResponse;
  use Moose;
  has BusinessCalling => (is => 'ro', isa => 'Paws::Chime::BusinessCallingSettings');
  has VoiceConnector => (is => 'ro', isa => 'Paws::Chime::VoiceConnectorSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetGlobalSettingsResponse

=head1 ATTRIBUTES


=head2 BusinessCalling => L<Paws::Chime::BusinessCallingSettings>

The Amazon Chime Business Calling settings.


=head2 VoiceConnector => L<Paws::Chime::VoiceConnectorSettings>

The Amazon Chime Voice Connector settings.


=head2 _request_id => Str


=cut

