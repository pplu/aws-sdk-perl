
package Paws::LexRuntime::PostTextResponse;
  use Moose;
  has DialogState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dialogState');
  has IntentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentName');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has MessageFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageFormat');
  has ResponseCard => (is => 'ro', isa => 'Paws::LexRuntime::ResponseCard', traits => ['NameInRequest'], request_name => 'responseCard');
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'sessionAttributes');
  has Slots => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'slots');
  has SlotToElicit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotToElicit');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostTextResponse

=head1 ATTRIBUTES


=head2 DialogState => Str

Identifies the current state of the user interaction. Amazon Lex
returns one of the following values as C<dialogState>. The client can
optionally use this information to customize the user interface.

=over

=item *

C<ElicitIntent> - Amazon Lex wants to elicit user intent.

For example, a user might utter an intent ("I want to order a pizza").
If Amazon Lex cannot infer the user intent from this utterance, it will
return this dialogState.

=item *

C<ConfirmIntent> - Amazon Lex is expecting a "yes" or "no" response.

For example, Amazon Lex wants user confirmation before fulfilling an
intent.

Instead of a simple "yes" or "no," a user might respond with additional
information. For example, "yes, but make it thick crust pizza" or "no,
I want to order a drink". Amazon Lex can process such additional
information (in these examples, update the crust type slot value, or
change intent from OrderPizza to OrderDrink).

=item *

C<ElicitSlot> - Amazon Lex is expecting a slot value for the current
intent.

For example, suppose that in the response Amazon Lex sends this
message: "What size pizza would you like?". A user might reply with the
slot value (e.g., "medium"). The user might also provide additional
information in the response (e.g., "medium thick crust pizza"). Amazon
Lex can process such additional information appropriately.

=item *

C<Fulfilled> - Conveys that the Lambda function configured for the
intent has successfully fulfilled the intent.

=item *

C<ReadyForFulfillment> - Conveys that the client has to fulfill the
intent.

=item *

C<Failed> - Conveys that the conversation with the user failed.

This can happen for various reasons including that the user did not
provide an appropriate response to prompts from the service (you can
configure how many times Amazon Lex can prompt a user for specific
information), or the Lambda function failed to fulfill the intent.

=back


Valid values are: C<"ElicitIntent">, C<"ConfirmIntent">, C<"ElicitSlot">, C<"Fulfilled">, C<"ReadyForFulfillment">, C<"Failed">
=head2 IntentName => Str

The current user intent that Amazon Lex is aware of.


=head2 Message => Str

The message to convey to the user. The message can come from the bot's
configuration or from a Lambda function.

If the intent is not configured with a Lambda function, or if the
Lambda function returned C<Delegate> as the C<dialogAction.type> its
response, Amazon Lex decides on the next course of action and selects
an appropriate message from the bot's configuration based on the
current interaction context. For example, if Amazon Lex isn't able to
understand user input, it uses a clarification prompt message.

When you create an intent you can assign messages to groups. When
messages are assigned to groups Amazon Lex returns one message from
each group in the response. The message field is an escaped JSON string
containing the messages. For more information about the structure of
the JSON string returned, see msg-prompts-formats.

If the Lambda function returns a message, Amazon Lex passes it to the
client in its response.


=head2 MessageFormat => Str

The format of the response message. One of the following values:

=over

=item *

C<PlainText> - The message contains plain UTF-8 text.

=item *

C<CustomPayload> - The message is a custom format defined by the Lambda
function.

=item *

C<SSML> - The message contains text formatted for voice output.

=item *

C<Composite> - The message contains an escaped JSON object containing
one or more messages from the groups that messages were assigned to
when the intent was created.

=back


Valid values are: C<"PlainText">, C<"CustomPayload">, C<"SSML">, C<"Composite">
=head2 ResponseCard => L<Paws::LexRuntime::ResponseCard>

Represents the options that the user has to respond to the current
prompt. Response Card can come from the bot configuration (in the
Amazon Lex console, choose the settings button next to a slot) or from
a code hook (Lambda function).


=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

A map of key-value pairs representing the session-specific context
information.


=head2 Slots => L<Paws::LexRuntime::StringMap>

The intent slots that Amazon Lex detected from the user input in the
conversation.

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

