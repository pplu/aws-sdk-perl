
package Paws::Chime::UpdateVoiceConnectorGroupResponse;
  use Moose;
  has VoiceConnectorGroup => (is => 'ro', isa => 'Paws::Chime::VoiceConnectorGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateVoiceConnectorGroupResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorGroup => L<Paws::Chime::VoiceConnectorGroup>

The updated Amazon Chime Voice Connector group details.


=head2 _request_id => Str


=cut

