
package Paws::PinpointSMSVoice::SendVoiceMessageResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::SendVoiceMessageResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

A unique identifier for the voice message.


=head2 _request_id => Str


=cut

