
package Paws::LexModelsV2::CreateSlotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has MultipleValuesSetting => (is => 'ro', isa => 'Paws::LexModelsV2::MultipleValuesSetting', traits => ['NameInRequest'], request_name => 'multipleValuesSetting');
  has ObfuscationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::ObfuscationSetting', traits => ['NameInRequest'], request_name => 'obfuscationSetting');
  has SlotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotId');
  has SlotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotName');
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeId');
  has ValueElicitationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueElicitationSetting', traits => ['NameInRequest'], request_name => 'valueElicitationSetting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateSlotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot associated with the slot.


=head2 BotVersion => Str

The version of the bot associated with the slot.


=head2 CreationDateTime => Str

The timestamp of the date and time that the slot was created.


=head2 Description => Str

The description associated with the slot.


=head2 IntentId => Str

The unique identifier of the intent associated with the slot.


=head2 LocaleId => Str

The language and local specified for the slot.


=head2 MultipleValuesSetting => L<Paws::LexModelsV2::MultipleValuesSetting>

Indicates whether the slot returns multiple values in one response.


=head2 ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>

Indicates whether the slot is configured to obfuscate values in Amazon
CloudWatch logs.


=head2 SlotId => Str

The unique identifier associated with the slot. Use this to identify
the slot when you update or delete it.


=head2 SlotName => Str

The name specified for the slot.


=head2 SlotTypeId => Str

The unique identifier of the slot type associated with this slot.


=head2 ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

The value elicitation settings specified for the slot.


=head2 _request_id => Str


=cut

