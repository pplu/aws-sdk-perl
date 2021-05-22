
package Paws::LexModelsV2::DescribeSlotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has ObfuscationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::ObfuscationSetting', traits => ['NameInRequest'], request_name => 'obfuscationSetting');
  has SlotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotId');
  has SlotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotName');
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeId');
  has ValueElicitationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueElicitationSetting', traits => ['NameInRequest'], request_name => 'valueElicitationSetting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeSlotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the slot.


=head2 BotVersion => Str

The version of the bot associated with the slot.


=head2 CreationDateTime => Str

A timestamp of the date and time that the slot was created.


=head2 Description => Str

The description specified for the slot.


=head2 IntentId => Str

The identifier of the intent associated with the slot.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the slot was last updated.


=head2 LocaleId => Str

The language and locale specified for the slot.


=head2 ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>

Whether slot values are shown in Amazon CloudWatch logs. If the value
is C<None>, the actual value of the slot is shown in logs.


=head2 SlotId => Str

The unique identifier generated for the slot.


=head2 SlotName => Str

The name specified for the slot.


=head2 SlotTypeId => Str

The identifier of the slot type that determines the values entered into
the slot.


=head2 ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

Prompts that Amazon Lex uses to elicit a value for the slot.


=head2 _request_id => Str


=cut

