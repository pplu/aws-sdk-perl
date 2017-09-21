
package Paws::LexRuntime::PostContentResponse;
  use Moose;
  has AudioStream => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audioStream');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'contentType');
  has DialogState => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'dialogState');
  has InputTranscript => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'inputTranscript');
  has IntentName => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'intentName');
  has Message => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'message');
  has SessionAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'sessionAttributes');
  has Slots => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'slots');
  has SlotToElicit => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'slotToElicit');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AudioStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostContentResponse

=head1 ATTRIBUTES


=head2 AudioStream => Str

The prompt (or statement) to convey to the user. This is based on the
bot configuration and context. For example, if Amazon Lex did not
understand the user intent, it sends the C<clarificationPrompt>
configured for the bot. If the intent requires confirmation before
taking the fulfillment action, it sends the C<confirmationPrompt>.
Another example: Suppose that the Lambda function successfully
fulfilled the intent, and sent a message to convey to the user. Then
Amazon Lex sends that message in the response.


=head2 ContentType => Str

Content type as specified in the C<Accept> HTTP header in the request.


=head2 DialogState => Str

Identifies the current state of the user interaction. Amazon Lex
returns one of the following values as C<dialogState>. The client can
optionally use this information to customize the user interface.

=over

=item *

C<ElicitIntent> - Amazon Lex wants to elicit the user's intent.
Consider the following examples:

For example, a user might utter an intent ("I want to order a pizza").
If Amazon Lex cannot infer the user intent from this utterance, it will
return this dialog state.

=item *

C<ConfirmIntent> - Amazon Lex is expecting a "yes" or "no" response.

For example, Amazon Lex wants user confirmation before fulfilling an
intent. Instead of a simple "yes" or "no" response, a user might
respond with additional information. For example, "yes, but make it a
thick crust pizza" or "no, I want to order a drink." Amazon Lex can
process such additional information (in these examples, update the
crust type slot or change the intent from OrderPizza to OrderDrink).

=item *

C<ElicitSlot> - Amazon Lex is expecting the value of a slot for the
current intent.

For example, suppose that in the response Amazon Lex sends this
message: "What size pizza would you like?". A user might reply with the
slot value (e.g., "medium"). The user might also provide additional
information in the response (e.g., "medium thick crust pizza"). Amazon
Lex can process such additional information appropriately.

=item *

C<Fulfilled> - Conveys that the Lambda function has successfully
fulfilled the intent.

=item *

C<ReadyForFulfillment> - Conveys that the client has to fulfill the
request.

=item *

C<Failed> - Conveys that the conversation with the user failed.

This can happen for various reasons, including that the user does not
provide an appropriate response to prompts from the service (you can
configure how many times Amazon Lex can prompt a user for specific
information), or if the Lambda function fails to fulfill the intent.

=back


Valid values are: C<"ElicitIntent">, C<"ConfirmIntent">, C<"ElicitSlot">, C<"Fulfilled">, C<"ReadyForFulfillment">, C<"Failed">
=head2 InputTranscript => Str

The text used to process the request.

If the input was an audio stream, the C<inputTranscript> field contains
the text extracted from the audio stream. This is the text that is
actually processed to recognize intents and slot values. You can use
this information to determine if Amazon Lex is correctly processing the
audio that you send.


=head2 IntentName => Str

Current user intent that Amazon Lex is aware of.


=head2 Message => Str

Message to convey to the user. It can come from the bot's configuration
or a code hook (Lambda function). If the current intent is not
configured with a code hook or if the code hook returned C<Delegate> as
the C<dialogAction.type> in its response, then Amazon Lex decides the
next course of action and selects an appropriate message from the bot
configuration based on the current user interaction context. For
example, if Amazon Lex is not able to understand the user input, it
uses a clarification prompt message (For more information, see the
Error Handling section in the Amazon Lex console). Another example: if
the intent requires confirmation before fulfillment, then Amazon Lex
uses the confirmation prompt message in the intent configuration. If
the code hook returns a message, Amazon Lex passes it as-is in its
response to the client.


=head2 SessionAttributes => Str

Map of key/value pairs representing the session-specific context
information.


=head2 Slots => Str

Map of zero or more intent slots (name/value pairs) Amazon Lex detected
from the user input during the conversation.

Amazon Lex creates a resolution list containing likely values for a
slot. The value that it returns is determined by the
C<valueSelectionStrategy> selected when the slot type was created or
updated. If C<valueSelectionStrategy> is set to C<ORIGINAL_VALUE>, the
value provided by the user is returned, if the user value is similar to
the slot values. If C<valueSelectionStrategy> is set to
C<TOP_RESOLUTION> Amazon Lex returns the first value in the resolution
list or, if there is no resolution list, null. If you don't specify a
C<valueSelectionStrategy>, the default is C<ORIGINAL_VALUE>.


=head2 SlotToElicit => Str

If the C<dialogState> value is C<ElicitSlot>, returns the name of the
slot for which Amazon Lex is eliciting a value.


=head2 _request_id => Str


=cut

