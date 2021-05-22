
package Paws::LexModelsV2::CreateIntentResponse;
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
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has OutputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::OutputContext]', traits => ['NameInRequest'], request_name => 'outputContexts');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SampleUtterance]', traits => ['NameInRequest'], request_name => 'sampleUtterances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateIntentResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the intent.


=head2 BotVersion => Str

The identifier of the version of the bot associated with the intent.


=head2 CreationDateTime => Str

A timestamp of the date and time that the intent was created.


=head2 Description => Str

The description specified for the intent.


=head2 DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>

The dialog Lambda function specified for the intent.


=head2 FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>

The fulfillment Lambda function specified for the intent.


=head2 InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]

The list of input contexts specified for the intent.


=head2 IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>

The closing setting specified for the intent.


=head2 IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>

The confirmation setting specified for the intent.


=head2 IntentId => Str

A unique identifier for the intent.


=head2 IntentName => Str

The name specified for the intent.


=head2 KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>

Configuration for searching a Amazon Kendra index specified for the
intent.


=head2 LocaleId => Str

The locale that the intent is specified to use.


=head2 OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]

The list of output contexts specified for the intent.


=head2 ParentIntentSignature => Str

The signature of the parent intent specified for the intent.


=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

The sample utterances specified for the intent.


=head2 _request_id => Str


=cut

