
package Paws::LexModelsV2::CreateSlotTypeResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
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

Paws::LexModelsV2::CreateSlotTypeResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier for the bot associated with the slot type.


=head2 BotVersion => Str

The version of the bot associated with the slot type.


=head2 CreationDateTime => Str

A timestamp of the date and time that the slot type was created.


=head2 Description => Str

The description specified for the slot type.


=head2 LocaleId => Str

The specified language and local specified for the slot type.


=head2 ParentSlotTypeSignature => Str

The signature of the base slot type specified for the slot type.


=head2 SlotTypeId => Str

The unique identifier assigned to the slot type. Use this to identify
the slot type in the C<UpdateSlotType> and C<DeleteSlotType>
operations.


=head2 SlotTypeName => Str

The name specified for the slot type.


=head2 SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]

The list of values that the slot type can assume.


=head2 ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

The strategy that Amazon Lex uses to select a value from the list of
possible values.


=head2 _request_id => Str


=cut

