
package Paws::LexModels::PutIntent;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ConclusionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'conclusionStatement');
  has ConfirmationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'confirmationPrompt');
  has CreateVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModels::CodeHook', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FollowUpPrompt => (is => 'ro', isa => 'Paws::LexModels::FollowUpPrompt', traits => ['NameInRequest'], request_name => 'followUpPrompt');
  has FulfillmentActivity => (is => 'ro', isa => 'Paws::LexModels::FulfillmentActivity', traits => ['NameInRequest'], request_name => 'fulfillmentActivity');
  has InputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::InputContext]', traits => ['NameInRequest'], request_name => 'inputContexts');
  has KendraConfiguration => (is => 'ro', isa => 'Paws::LexModels::KendraConfiguration', traits => ['NameInRequest'], request_name => 'kendraConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has OutputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::OutputContext]', traits => ['NameInRequest'], request_name => 'outputContexts');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has RejectionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'rejectionStatement');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sampleUtterances');
  has Slots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Slot]', traits => ['NameInRequest'], request_name => 'slots');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutIntent - Arguments for method PutIntent on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntent on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method PutIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntent.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
# To create an intent
# This example shows how to create an intent for ordering pizzas.
my $PutIntentResponse = $models.lex->PutIntent(
'ConclusionStatement' => 
{
'Messages' => 
[

{
'Content' => 'All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.',
'ContentType' => 'PlainText'
},

{
'Content' => 'OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.',
'ContentType' => 'PlainText'
}
],
'ResponseCard' => 'foo'
},
'ConfirmationPrompt' => 
{
'MaxAttempts' => 1,
'Messages' => 
[

{
'Content' => 'Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?',
'ContentType' => 'PlainText'
}
]
},
'Description' => 'Order a pizza from a local pizzeria.',
'FulfillmentActivity' => 
{
'Type' => 'ReturnIntent'
},
'Name' => 'DocOrderPizza',
'RejectionStatement' => 
{
'Messages' => 
[

{
'Content' => 'Ok, I'll cancel your order.',
'ContentType' => 'PlainText'
},

{
'Content' => 'I cancelled your order.',
'ContentType' => 'PlainText'
}
]
},
'SampleUtterances' => 
[
'Order me a pizza.',
'Order me a {Type} pizza.',
'I want a {Crust} crust {Type} pizza',
'I want a {Crust} crust {Type} pizza with {Sauce} sauce.'
],
'Slots' => 
[

{
'Description' => 'The type of pizza to order.',
'Name' => 'Type',
'Priority' => 1,
'SampleUtterances' => 
[
'Get me a {Type} pizza.',
'A {Type} pizza please.',
'I'd like a {Type} pizza.'
],
'SlotConstraint' => 'Required',
'SlotType' => 'DocPizzaType',
'SlotTypeVersion' => '$LATEST',
'ValueElicitationPrompt' => 
{
'MaxAttempts' => 1,
'Messages' => 
[

{
'Content' => 'What type of pizza would you like?',
'ContentType' => 'PlainText'
},

{
'Content' => 'Vegie or cheese pizza?',
'ContentType' => 'PlainText'
},

{
'Content' => 'I can get you a vegie or a cheese pizza.',
'ContentType' => 'PlainText'
}
]
}
},

{
'Description' => 'The type of pizza crust to order.',
'Name' => 'Crust',
'Priority' => 2,
'SampleUtterances' => 
[
'Make it a {Crust} crust.',
'I'd like a {Crust} crust.'
],
'SlotConstraint' => 'Required',
'SlotType' => 'DocPizzaCrustType',
'SlotTypeVersion' => '$LATEST',
'ValueElicitationPrompt' => 
{
'MaxAttempts' => 1,
'Messages' => 
[

{
'Content' => 'What type of crust would you like?',
'ContentType' => 'PlainText'
},

{
'Content' => 'Thick or thin crust?',
'ContentType' => 'PlainText'
}
]
}
},

{
'Description' => 'The type of sauce to use on the pizza.',
'Name' => 'Sauce',
'Priority' => 3,
'SampleUtterances' => 
[
'Make it {Sauce} sauce.',
'I'd like {Sauce} sauce.'
],
'SlotConstraint' => 'Required',
'SlotType' => 'DocPizzaSauceType',
'SlotTypeVersion' => '$LATEST',
'ValueElicitationPrompt' => 
{
'MaxAttempts' => 1,
'Messages' => 
[

{
'Content' => 'White or red sauce?',
'ContentType' => 'PlainText'
},

{
'Content' => 'Garlic or tomato sauce?',
'ContentType' => 'PlainText'
}
]
}
}
]
);

# Results:
my $checksum = $PutIntentResponse->checksum;
my $conclusionStatement = $PutIntentResponse->conclusionStatement;
my $confirmationPrompt = $PutIntentResponse->confirmationPrompt;
my $createdDate = $PutIntentResponse->createdDate;
my $description = $PutIntentResponse->description;
my $fulfillmentActivity = $PutIntentResponse->fulfillmentActivity;
my $lastUpdatedDate = $PutIntentResponse->lastUpdatedDate;
my $name = $PutIntentResponse->name;
my $rejectionStatement = $PutIntentResponse->rejectionStatement;
my $sampleUtterances = $PutIntentResponse->sampleUtterances;
my $slots = $PutIntentResponse->slots;
my $version = $PutIntentResponse->version;

# Returns a L<Paws::LexModels::PutIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/PutIntent>

=head1 ATTRIBUTES


=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new intent, leave the C<checksum> field blank. If you
specify a checksum you get a C<BadRequestException> exception.

When you want to update a intent, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 ConclusionStatement => L<Paws::LexModels::Statement>

The statement that you want Amazon Lex to convey to the user after the
intent is successfully fulfilled by the Lambda function.

This element is relevant only if you provide a Lambda function in the
C<fulfillmentActivity>. If you return the intent to the client
application, you can't specify this element.

The C<followUpPrompt> and C<conclusionStatement> are mutually
exclusive. You can specify only one.



=head2 ConfirmationPrompt => L<Paws::LexModels::Prompt>

Prompts the user to confirm the intent. This question should have a yes
or no answer.

Amazon Lex uses this prompt to ensure that the user acknowledges that
the intent is ready for fulfillment. For example, with the
C<OrderPizza> intent, you might want to confirm that the order is
correct before placing it. For other intents, such as intents that
simply respond to user questions, you might not need to ask the user
for confirmation before providing the information.

You you must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 CreateVersion => Bool

When set to C<true> a new numbered version of the intent is created.
This is the same as calling the C<CreateIntentVersion> operation. If
you do not specify C<createVersion>, the default is C<false>.



=head2 Description => Str

A description of the intent.



=head2 DialogCodeHook => L<Paws::LexModels::CodeHook>

Specifies a Lambda function to invoke for each user input. You can
invoke this Lambda function to personalize user interaction.

For example, suppose your bot determines that the user is John. Your
Lambda function might retrieve John's information from a backend
database and prepopulate some of the values. For example, if you find
that John is gluten intolerant, you might set the corresponding intent
slot, C<GlutenIntolerant>, to true. You might find John's phone number
and set the corresponding session attribute.



=head2 FollowUpPrompt => L<Paws::LexModels::FollowUpPrompt>

Amazon Lex uses this prompt to solicit additional activity after
fulfilling an intent. For example, after the C<OrderPizza> intent is
fulfilled, you might prompt the user to order a drink.

The action that Amazon Lex takes depends on the user's response, as
follows:

=over

=item *

If the user says "Yes" it responds with the clarification prompt that
is configured for the bot.

=item *

if the user says "Yes" and continues with an utterance that triggers an
intent it starts a conversation for the intent.

=item *

If the user says "No" it responds with the rejection statement
configured for the the follow-up prompt.

=item *

If it doesn't recognize the utterance it repeats the follow-up prompt
again.

=back

The C<followUpPrompt> field and the C<conclusionStatement> field are
mutually exclusive. You can specify only one.



=head2 FulfillmentActivity => L<Paws::LexModels::FulfillmentActivity>

Required. Describes how the intent is fulfilled. For example, after a
user provides all of the information for a pizza order,
C<fulfillmentActivity> defines how the bot places an order with a local
pizza store.

You might configure Amazon Lex to return all of the intent information
to the client application, or direct it to invoke a Lambda function
that can process the intent (for example, place an order with a
pizzeria).



=head2 InputContexts => ArrayRef[L<Paws::LexModels::InputContext>]

An array of C<InputContext> objects that lists the contexts that must
be active for Amazon Lex to choose the intent in a conversation with
the user.



=head2 KendraConfiguration => L<Paws::LexModels::KendraConfiguration>

Configuration information required to use the
C<AMAZON.KendraSearchIntent> intent to connect to an Amazon Kendra
index. For more information, see AMAZON.KendraSearchIntent
(http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html).



=head2 B<REQUIRED> Name => Str

The name of the intent. The name is I<not> case sensitive.

The name can't match a built-in intent name, or a built-in intent name
with "AMAZON." removed. For example, because there is a built-in intent
called C<AMAZON.HelpIntent>, you can't create a custom intent called
C<HelpIntent>.

For a list of built-in intents, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.



=head2 OutputContexts => ArrayRef[L<Paws::LexModels::OutputContext>]

An array of C<OutputContext> objects that lists the contexts that the
intent activates when the intent is fulfilled.



=head2 ParentIntentSignature => Str

A unique identifier for the built-in intent to base this intent on. To
find the signature for an intent, see Standard Built-in Intents
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
in the I<Alexa Skills Kit>.



=head2 RejectionStatement => L<Paws::LexModels::Statement>

When the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.

You must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of utterances (strings) that a user might say to signal the
intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
{PizzaSize} pizzas".

In each utterance, a slot name is enclosed in curly braces.



=head2 Slots => ArrayRef[L<Paws::LexModels::Slot>]

An array of intent slots. At runtime, Amazon Lex elicits required slot
values from the user using prompts defined in the slots. For more
information, see how-it-works.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

