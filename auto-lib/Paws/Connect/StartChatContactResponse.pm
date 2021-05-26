
package Paws::Connect::StartChatContactResponse;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str');
  has ParticipantId => (is => 'ro', isa => 'Str');
  has ParticipantToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartChatContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

The identifier of this contact within the Amazon Connect instance.


=head2 ParticipantId => Str

The identifier for a chat participant. The participantId for a chat
participant is the same throughout the chat lifecycle.


=head2 ParticipantToken => Str

The token used by the chat participant to call
CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html).
The participant token is valid for the lifetime of a chat participant.


=head2 _request_id => Str


=cut

