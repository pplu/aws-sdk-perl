
package Paws::LexModelsV2::UpdateIntentResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::DialogCodeHookSettings', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FulfillmentCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::FulfillmentCodeHookSettings', traits => ['NameInRequest'], request_name => 'fulfillmentCodeHook');
  has InputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::InputContext]', traits => ['NameInRequest'], request_name => 'inputContexts');
  has IntentClosingSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentClosingSetting', traits => ['NameInRequest'], request_name => 'intentClosingSetting');
  has IntentConfirmationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentConfirmationSetting', traits => ['NameInRequest'], request_name => 'intentConfirmationSetting');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId');
  has IntentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentName');
  has KendraConfiguration => (is => 'ro', isa => 'Paws::LexModelsV2::KendraConfiguration', traits => ['NameInRequest'], request_name => 'kendraConfiguration');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has OutputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::OutputContext]', traits => ['NameInRequest'], request_name => 'outputContexts');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SampleUtterance]', traits => ['NameInRequest'], request_name => 'sampleUtterances');
  has SlotPriorities => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotPriority]', traits => ['NameInRequest'], request_name => 'slotPriorities');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateIntentResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the intent.


=head2 BotVersion => Str

The version of the bot that contains the intent. Will always be
C<DRAFT>.


=head2 CreationDateTime => Str

A timestamp of when the intent was created.


=head2 Description => Str

The updated description of the intent.


=head2 DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>

The updated Lambda function called during each turn of the conversation
with the user.


=head2 FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>

The updated Lambda function called when the intent is ready for
fulfillment.


=head2 InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]

The updated list of contexts that must be active for the intent to be
considered by Amazon Lex.


=head2 IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>

The updated response that Amazon Lex sends the user when the intent is
closed.


=head2 IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>

The updated prompts that Amazon Lex sends to the user to confirm the
completion of an intent.


=head2 IntentId => Str

The identifier of the intent that was updated.


=head2 IntentName => Str

The updated name of the intent.


=head2 KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>

The updated configuration for connecting to an Amazon Kendra index with
the C<AMAZON.KendraSearchIntent> intent.


=head2 LastUpdatedDateTime => Str

A timestamp of the last time that the intent was modified.


=head2 LocaleId => Str

The updated language and locale of the intent.


=head2 OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]

The updated list of contexts that Amazon Lex activates when the intent
is fulfilled.


=head2 ParentIntentSignature => Str

The updated built-in intent that is the parent of this intent.


=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

The updated list of sample utterances for the intent.


=head2 SlotPriorities => ArrayRef[L<Paws::LexModelsV2::SlotPriority>]

The updated list of slots and their priorities that are elicited from
the user for the intent.


=head2 _request_id => Str


=cut

