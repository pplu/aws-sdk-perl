
package Paws::LexRuntimeV2::RecognizeUtteranceResponse;
  use Moose;
  has AudioStream => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audioStream');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has InputMode => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-input-mode');
  has InputTranscript => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-input-transcript');
  has Interpretations => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-interpretations');
  has Messages => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-messages');
  has RequestAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-request-attributes');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-id');
  has SessionState => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-state');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AudioStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::RecognizeUtteranceResponse

=head1 ATTRIBUTES


=head2 AudioStream => Str

The prompt or statement to send to the user. This is based on the bot
configuration and context. For example, if Amazon Lex V2 did not
understand the user intent, it sends the C<clarificationPrompt>
configured for the bot. If the intent requires confirmation before
taking the fulfillment action, it sends the C<confirmationPrompt>.
Another example: Suppose that the Lambda function successfully
fulfilled the intent, and sent a message to convey to the user. Then
Amazon Lex V2 sends that message in the response.


=head2 ContentType => Str

Content type as specified in the C<responseContentType> in the request.


=head2 InputMode => Str

Indicates whether the input mode to the operation was text or speech.


=head2 InputTranscript => Str

The text used to process the request.

If the input was an audio stream, the C<inputTranscript> field contains
the text extracted from the audio stream. This is the text that is
actually processed to recognize intents and slot values. You can use
this information to determine if Amazon Lex V2 is correctly processing
the audio that you send.

The C<inputTranscript> field is compressed with gzip and then base64
encoded. Before you can use the contents of the field, you must decode
and decompress the contents. See the example for a simple function to
decode and decompress the contents.


=head2 Interpretations => Str

A list of intents that Amazon Lex V2 determined might satisfy the
user's utterance.

Each interpretation includes the intent, a score that indicates how
confident Amazon Lex V2 is that the interpretation is the correct one,
and an optional sentiment response that indicates the sentiment
expressed in the utterance.

The C<interpretations> field is compressed with gzip and then base64
encoded. Before you can use the contents of the field, you must decode
and decompress the contents. See the example for a simple function to
decode and decompress the contents.


=head2 Messages => Str

A list of messages that were last sent to the user. The messages are
ordered based on the order that you returned the messages from your
Lambda function or the order that the messages are defined in the bot.

The C<messages> field is compressed with gzip and then base64 encoded.
Before you can use the contents of the field, you must decode and
decompress the contents. See the example for a simple function to
decode and decompress the contents.


=head2 RequestAttributes => Str

The attributes sent in the request.

The C<requestAttributes> field is compressed with gzip and then base64
encoded. Before you can use the contents of the field, you must decode
and decompress the contents.


=head2 SessionId => Str

The identifier of the session in use.


=head2 SessionState => Str

Represents the current state of the dialog between the user and the
bot.

Use this to determine the progress of the conversation and what the
next action might be.

The C<sessionState> field is compressed with gzip and then base64
encoded. Before you can use the contents of the field, you must decode
and decompress the contents. See the example for a simple function to
decode and decompress the contents.


=head2 _request_id => Str


=cut

