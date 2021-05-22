
package Paws::LexModelsV2::DescribeSlotTypeResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has ParentSlotTypeSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentSlotTypeSignature');
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeId');
  has SlotTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeName');
  has SlotTypeValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotTypeValue]', traits => ['NameInRequest'], request_name => 'slotTypeValues');
  has ValueSelectionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueSelectionSetting', traits => ['NameInRequest'], request_name => 'valueSelectionSetting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeSlotTypeResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the slot type.


=head2 BotVersion => Str

The version of the bot associated with the slot type.


=head2 CreationDateTime => Str

A timestamp of the date and time that the slot type was created.


=head2 Description => Str

The description specified for the slot type.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the slot type was last updated.


=head2 LocaleId => Str

The language and locale specified for the slot type.


=head2 ParentSlotTypeSignature => Str

The built in slot type used as a parent to this slot type.


=head2 SlotTypeId => Str

The unique identifier for the slot type.


=head2 SlotTypeName => Str

The name specified for the slot type.


=head2 SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]

The values that the slot type can take. Includes any synonyms for the
slot type values.


=head2 ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

The strategy that Amazon Lex uses to choose a value from a list of
possible values.


=head2 _request_id => Str


=cut

