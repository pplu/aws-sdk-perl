
package Paws::LexModelsV2::DescribeIntentResponse;
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

Paws::LexModelsV2::DescribeIntentResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the intent.


=head2 BotVersion => Str

The version of the bot associated with the intent.


=head2 CreationDateTime => Str

A timestamp of the date and time that the intent was created.


=head2 Description => Str

The description of the intent.


=head2 DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>

The Lambda function called during each turn of a conversation with the
intent.


=head2 FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>

The Lambda function called when the intent is complete and ready for
fulfillment.


=head2 InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]

A list of contexts that must be active for the intent to be considered
for sending to the user.


=head2 IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>

The response that Amazon Lex sends to when the intent is closed.


=head2 IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>

Prompts that Amazon Lex sends to the user to confirm completion of an
intent.


=head2 IntentId => Str

The unique identifier assigned to the intent when it was created.


=head2 IntentName => Str

The name specified for the intent.


=head2 KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>

Configuration information required to use the
C<AMAZON.KendraSearchIntent> intent.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the intent was last updated.


=head2 LocaleId => Str

The language and locale specified for the intent.


=head2 OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]

A list of contexts that are activated when the intent is fulfilled.


=head2 ParentIntentSignature => Str

The identifier of the built-in intent that this intent is derived from,
if any.


=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

User utterances that trigger this intent.


=head2 SlotPriorities => ArrayRef[L<Paws::LexModelsV2::SlotPriority>]

The list that determines the priority that slots should be elicited
from the user.


=head2 _request_id => Str


=cut

