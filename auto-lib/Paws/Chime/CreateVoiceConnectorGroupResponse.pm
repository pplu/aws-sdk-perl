
package Paws::Chime::CreateVoiceConnectorGroupResponse;
  use Moose;
  has VoiceConnectorGroup => (is => 'ro', isa => 'Paws::Chime::VoiceConnectorGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateVoiceConnectorGroupResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorGroup => L<Paws::Chime::VoiceConnectorGroup>

The Amazon Chime Voice Connector group details.


=head2 _request_id => Str


=cut

