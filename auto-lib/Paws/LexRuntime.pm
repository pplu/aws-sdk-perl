package Paws::LexRuntime;
  use Moose;
  sub service { 'runtime.lex' }
  sub signing_name { 'lex' }
  sub version { '2016-11-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub PostContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntime::PostContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntime::PostText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PostContent PostText / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime - Perl Interface to AWS Amazon Lex Runtime Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Lex provides both build and runtime endpoints. Each endpoint
provides a set of operations (API). Your conversational bot uses the
runtime API to understand user utterances (user input text or voice).
For example, suppose a user says "I want pizza", your bot sends this
input to Amazon Lex using the runtime API. Amazon Lex recognizes that
the user request is for the OrderPizza intent (one of the intents
defined in the bot). Then Amazon Lex engages in user conversation on
behalf of the bot to elicit required information (slot values, such as
pizza size and crust type), and then performs fulfillment activity
(that you configured when you created the bot). You use the build-time
API to create and manage your Amazon Lex bot. For a list of build-time
operations, see the build-time API, .

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28>


=head1 METHODS

=head2 PostContent

=over

=item BotAlias => Str

=item BotName => Str

=item ContentType => Str

=item InputStream => Str

=item UserId => Str

=item [Accept => Str]

=item [RequestAttributes => Str]

=item [SessionAttributes => Str]


=back

Each argument is described in detail in: L<Paws::LexRuntime::PostContent>

Returns: a L<Paws::LexRuntime::PostContentResponse> instance

Sends user input (text or speech) to Amazon Lex. Clients use this API
to send text and audio requests to Amazon Lex at runtime. Amazon Lex
interprets the user input using the machine learning model that it
built for the bot.

The C<PostContent> operation supports audio input at 8kHz and 16kHz.
You can use 8kHz audio to achieve higher speech recognition accuracy in
telephone audio applications.

In response, Amazon Lex returns the next message to convey to the user.
Consider the following example messages:

=over

=item *

For a user input "I would like a pizza," Amazon Lex might return a
response with a message eliciting slot data (for example,
C<PizzaSize>): "What size pizza would you like?".

=item *

After the user provides all of the pizza order information, Amazon Lex
might return a response with a message to get user confirmation: "Order
the pizza?".

=item *

After the user replies "Yes" to the confirmation prompt, Amazon Lex
might return a conclusion statement: "Thank you, your cheese pizza has
been ordered.".

=back

Not all Amazon Lex messages require a response from the user. For
example, conclusion statements do not require a response. Some messages
require only a yes or no response. In addition to the C<message>,
Amazon Lex provides additional context about the message in the
response that you can use to enhance client behavior, such as
displaying the appropriate client user interface. Consider the
following examples:

=over

=item *

If the message is to elicit slot data, Amazon Lex returns the following
context information:

=over

=item *

C<x-amz-lex-dialog-state> header set to C<ElicitSlot>

=item *

C<x-amz-lex-intent-name> header set to the intent name in the current
context

=item *

C<x-amz-lex-slot-to-elicit> header set to the slot name for which the
C<message> is eliciting information

=item *

C<x-amz-lex-slots> header set to a map of slots configured for the
intent with their current values

=back

=item *

If the message is a confirmation prompt, the C<x-amz-lex-dialog-state>
header is set to C<Confirmation> and the C<x-amz-lex-slot-to-elicit>
header is omitted.

=item *

If the message is a clarification prompt configured for the intent,
indicating that the user intent is not understood, the
C<x-amz-dialog-state> header is set to C<ElicitIntent> and the
C<x-amz-slot-to-elicit> header is omitted.

=back

In addition, Amazon Lex also returns your application-specific
C<sessionAttributes>. For more information, see Managing Conversation
Context (http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).


=head2 PostText

=over

=item BotAlias => Str

=item BotName => Str

=item InputText => Str

=item UserId => Str

=item [RequestAttributes => L<Paws::LexRuntime::StringMap>]

=item [SessionAttributes => L<Paws::LexRuntime::StringMap>]


=back

Each argument is described in detail in: L<Paws::LexRuntime::PostText>

Returns: a L<Paws::LexRuntime::PostTextResponse> instance

Sends user input (text-only) to Amazon Lex. Client applications can use
this API to send requests to Amazon Lex at runtime. Amazon Lex then
interprets the user input using the machine learning model it built for
the bot.

In response, Amazon Lex returns the next C<message> to convey to the
user an optional C<responseCard> to display. Consider the following
example messages:

=over

=item *

For a user input "I would like a pizza", Amazon Lex might return a
response with a message eliciting slot data (for example, PizzaSize):
"What size pizza would you like?"

=item *

After the user provides all of the pizza order information, Amazon Lex
might return a response with a message to obtain user confirmation
"Proceed with the pizza order?".

=item *

After the user replies to a confirmation prompt with a "yes", Amazon
Lex might return a conclusion statement: "Thank you, your cheese pizza
has been ordered.".

=back

Not all Amazon Lex messages require a user response. For example, a
conclusion statement does not require a response. Some messages require
only a "yes" or "no" user response. In addition to the C<message>,
Amazon Lex provides additional context about the message in the
response that you might use to enhance client behavior, for example, to
display the appropriate client user interface. These are the
C<slotToElicit>, C<dialogState>, C<intentName>, and C<slots> fields in
the response. Consider the following examples:

=over

=item *

If the message is to elicit slot data, Amazon Lex returns the following
context information:

=over

=item *

C<dialogState> set to ElicitSlot

=item *

C<intentName> set to the intent name in the current context

=item *

C<slotToElicit> set to the slot name for which the C<message> is
eliciting information

=item *

C<slots> set to a map of slots, configured for the intent, with
currently known values

=back

=item *

If the message is a confirmation prompt, the C<dialogState> is set to
ConfirmIntent and C<SlotToElicit> is set to null.

=item *

If the message is a clarification prompt (configured for the intent)
that indicates that user intent is not understood, the C<dialogState>
is set to ElicitIntent and C<slotToElicit> is set to null.

=back

In addition, Amazon Lex also returns your application-specific
C<sessionAttributes>. For more information, see Managing Conversation
Context (http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

