
package Paws::LexRuntime::PostTextResponse;
  use Moose;
  has DialogState => (is => 'ro', isa => 'Str');
  has IntentName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ResponseCard => (is => 'ro', isa => 'Paws::LexRuntime::ResponseCard');
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap');
  has Slots => (is => 'ro', isa => 'Paws::LexRuntime::StringMap');
  has SlotToElicit => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostTextResponse

=head1 ATTRIBUTES


=head2 DialogState => Str

Represents the message type to be conveyed to the user. For example:

=over

=item *

C<ElicitIntent> E<ndash> Amazon Lex wants to elicit user intent. For
example, Amazon Lex did not understand the first utterances such as "I
want to order pizza", which indicates the OrderPizza intent. If Amazon
Lex doesn't understand the intent, it returns this C<dialogState>.
Another example is when your intent is configured with a follow up
prompt. For example, after OrderPizza intent is fulfilled, the intent
might have a follow up prompt such as " Do you want to order a drink or
desert?" In this case, Amazon Lex returns this C<dialogState>.

=item *

C<ConfirmIntent> E<ndash> Amazon Lex is expecting a yes/no response
from the user indicating whether to go ahead and fulfill the intent
(for example, OK to go ahead and order the pizza). In addition to a
yes/no reply, the user might provide a response with additional slot
information (either new slot information or changes to the existing
slot values). For example, "Yes, but change to thick crust." Amazon Lex
understands the additional information and updates the intent slots
accordingly.

Consider another example. Before fulfilling an order, your application
might prompt for confirmation such as "Do you want to place this pizza
order?" A user might reply with "No, I want to order a drink." Amazon
Lex recognizes the new OrderDrink intent.

=item *

C<ElicitSlot> E<ndash> Amazon Lex is expecting a value of a slot for
the current intent. For example, suppose Amazon Lex asks, "What size
pizza would you like?" A user might reply with "Medium pepperoni
pizza." Amazon Lex recognizes the size and the topping as the two
separate slot values.

=item *

C<Fulfilled> E<ndash> Conveys that the Lambda function has successfully
fulfilled the intent. If Lambda function returns a statement/message to
convey the fulfillment result, Amazon Lex passes this string to the
client. If not, Amazon Lex looks for C<conclusionStatement> that you
configured for the intent.

If both the Lambda function statement and the C<conclusionStatement>
are missing, Amazon Lex throws a bad request exception.

=item *

C<ReadyForFulfillment> E<ndash> conveys that the client has to do the
fulfillment work for the intent. This is the case when the current
intent is configured with C<ReturnIntent> as the C<fulfillmentActivity
>, where Amazon Lex returns this state to client.

=item *

C<Failed> E<ndash> Conversation with the user failed. Some of the
reasons for this C<dialogState> are: after the configured number of
attempts the user didn't provide an appropriate response, or the Lambda
function failed to fulfill an intent.

=back


Valid values are: C<"ElicitIntent">, C<"ConfirmIntent">, C<"ElicitSlot">, C<"Fulfilled">, C<"ReadyForFulfillment">, C<"Failed">
=head2 IntentName => Str

Intent Amazon Lex inferred from the user input text. This is one of the
intents configured for the bot.


=head2 Message => Str

Prompt (or statement) to convey to the user. This is based on the
application configuration and context. For example, if Amazon Lex did
not understand the user intent, it sends the C<clarificationPrompt>
configured for the application. In another example, if the intent
requires confirmation before taking the fulfillment action, it sends
the C<confirmationPrompt>. Suppose the Lambda function successfully
fulfilled the intent, and sent a message to convey to the user. In that
situation, Amazon Lex sends that message in the response.


=head2 ResponseCard => L<Paws::LexRuntime::ResponseCard>

Represents the options that the user has to respond to the current
prompt. Amazon Lex sends this in the response only if the
C<dialogState> value indicates that a user response is expected.


=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

Map of key value pairs representing the session specific context
information.


=head2 Slots => L<Paws::LexRuntime::StringMap>

Intent slots (name/value pairs) Amazon Lex detected so far from the
user input in the conversation.


=head2 SlotToElicit => Str

If C<dialogState> value is C<ElicitSlot>, returns the name of the slot
for which Amazon Lex is eliciting a value.


=head2 _request_id => Str


=cut

