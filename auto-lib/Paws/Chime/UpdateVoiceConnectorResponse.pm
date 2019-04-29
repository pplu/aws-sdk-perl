
package Paws::Chime::UpdateVoiceConnectorResponse;
  use Moose;
  has VoiceConnector => (is => 'ro', isa => 'Paws::Chime::VoiceConnector');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateVoiceConnectorResponse

=head1 ATTRIBUTES


=head2 VoiceConnector => L<Paws::Chime::VoiceConnector>

The Amazon Chime Voice Connector details.


=head2 _request_id => Str


=cut

