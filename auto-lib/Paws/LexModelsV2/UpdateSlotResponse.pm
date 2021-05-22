
package Paws::LexModelsV2::UpdateSlotResponse;
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

Paws::LexModelsV2::UpdateSlotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the slot.


=head2 BotVersion => Str

The identifier of the slot version that contains the slot. Will always
be C<DRAFT>.


=head2 CreationDateTime => Str

The timestamp of the date and time that the slot was created.


=head2 Description => Str

The updated description of the bot.


=head2 IntentId => Str

The intent that contains the slot.


=head2 LastUpdatedDateTime => Str

The timestamp of the date and time that the slot was last updated.


=head2 LocaleId => Str

The locale that contains the slot.


=head2 ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>

The updated setting that determines whether the slot value is
obfuscated in the Amazon CloudWatch logs.


=head2 SlotId => Str

The unique identifier of the slot that was updated.


=head2 SlotName => Str

The updated name of the slot.


=head2 SlotTypeId => Str

The updated identifier of the slot type that provides values for the
slot.


=head2 ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

The updated prompts that Amazon Lex sends to the user to elicit a
response that provides a value for the slot.


=head2 _request_id => Str


=cut

