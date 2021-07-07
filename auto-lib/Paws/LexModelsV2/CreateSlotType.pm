
package Paws::LexModelsV2::CreateSlotType;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has ParentSlotTypeSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentSlotTypeSignature');
  has SlotTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeName', required => 1);
  has SlotTypeValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotTypeValue]', traits => ['NameInRequest'], request_name => 'slotTypeValues');
  has ValueSelectionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueSelectionSetting', traits => ['NameInRequest'], request_name => 'valueSelectionSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateSlotTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateSlotType - Arguments for method CreateSlotType on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSlotType on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSlotType.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateSlotTypeResponse = $models - v2 -lex->CreateSlotType(
      BotId                 => 'MyId',
      BotVersion            => 'MyDraftBotVersion',
      LocaleId              => 'MyLocaleId',
      SlotTypeName          => 'MyName',
      ValueSelectionSetting => {
        ResolutionStrategy =>
          'OriginalValue',    # values: OriginalValue, TopResolution
        RegexFilter => {
          Pattern => 'MyRegexPattern',    # min: 1, max: 100

        },    # OPTIONAL
      },
      Description             => 'MyDescription',          # OPTIONAL
      ParentSlotTypeSignature => 'MySlotTypeSignature',    # OPTIONAL
      SlotTypeValues          => [
        {
          SampleValue => {
            Value => 'MyValue',    # min: 1, max: 140

          },    # OPTIONAL
          Synonyms => [
            {
              Value => 'MyValue',    # min: 1, max: 140

            },
            ...                      # OPTIONAL
          ],    # min: 1, max: 10000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BotId            = $CreateSlotTypeResponse->BotId;
    my $BotVersion       = $CreateSlotTypeResponse->BotVersion;
    my $CreationDateTime = $CreateSlotTypeResponse->CreationDateTime;
    my $Description      = $CreateSlotTypeResponse->Description;
    my $LocaleId         = $CreateSlotTypeResponse->LocaleId;
    my $ParentSlotTypeSignature =
      $CreateSlotTypeResponse->ParentSlotTypeSignature;
    my $SlotTypeId            = $CreateSlotTypeResponse->SlotTypeId;
    my $SlotTypeName          = $CreateSlotTypeResponse->SlotTypeName;
    my $SlotTypeValues        = $CreateSlotTypeResponse->SlotTypeValues;
    my $ValueSelectionSetting = $CreateSlotTypeResponse->ValueSelectionSetting;

    # Returns a L<Paws::LexModelsV2::CreateSlotTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateSlotType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with this slot type.



=head2 B<REQUIRED> BotVersion => Str

The identifier of the bot version associated with this slot type.



=head2 Description => Str

A description of the slot type. Use the description to help identify
the slot type in lists.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that the slot type will be
used in. The string must match one of the supported locales. All of the
bots, intents, and slots used by the slot type must have the same
locale. For more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 ParentSlotTypeSignature => Str

The built-in slot type used as a parent of this slot type. When you
define a parent slot type, the new slot type has the configuration of
the parent slot type.

Only C<AMAZON.AlphaNumeric> is supported.



=head2 B<REQUIRED> SlotTypeName => Str

The name for the slot. A slot type name must be unique within the
account.



=head2 SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]

A list of C<SlotTypeValue> objects that defines the values that the
slot type can take. Each value can have a list of synonyms, additional
values that help train the machine learning model about the values that
it resolves for a slot.



=head2 B<REQUIRED> ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

Determines the strategy that Amazon Lex uses to select a value from the
list of possible values. The field can be set to one of the following
values:

=over

=item *

C<OriginalValue> - Returns the value entered by the user, if the user
value is similar to the slot value.

=item *

C<TopResolution> - If there is a resolution list for the slot, return
the first value in the resolution list. If there is no resolution list,
return null.

=back

If you don't specify the C<valueSelectionSetting> parameter, the
default is C<OriginalValue>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSlotType in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

