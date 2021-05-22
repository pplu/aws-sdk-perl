
package Paws::LexRuntimeV2::RecognizeTextResponse;
  use Moose;
  has Interpretations => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntimeV2::Interpretation]', traits => ['NameInRequest'], request_name => 'interpretations');
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntimeV2::Message]', traits => ['NameInRequest'], request_name => 'messages');
  has RequestAttributes => (is => 'ro', isa => 'Paws::LexRuntimeV2::StringMap', traits => ['NameInRequest'], request_name => 'requestAttributes');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');
  has SessionState => (is => 'ro', isa => 'Paws::LexRuntimeV2::SessionState', traits => ['NameInRequest'], request_name => 'sessionState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::RecognizeTextResponse

=head1 ATTRIBUTES


=head2 Interpretations => ArrayRef[L<Paws::LexRuntimeV2::Interpretation>]

A list of intents that Amazon Lex determined might satisfy the user's
utterance.

Each interpretation includes the intent, a score that indicates now
confident Amazon Lex is that the interpretation is the correct one, and
an optional sentiment response that indicates the sentiment expressed
in the utterance.


=head2 Messages => ArrayRef[L<Paws::LexRuntimeV2::Message>]

A list of messages last sent to the user. The messages are ordered
based on the order that you returned the messages from your Lambda
function or the order that the messages are defined in the bot.


=head2 RequestAttributes => L<Paws::LexRuntimeV2::StringMap>

The attributes sent in the request.


=head2 SessionId => Str

The identifier of the session in use.


=head2 SessionState => L<Paws::LexRuntimeV2::SessionState>

Represents the current state of the dialog between the user and the
bot.

Use this to determine the progress of the conversation and what the
next action may be.


=head2 _request_id => Str


=cut

