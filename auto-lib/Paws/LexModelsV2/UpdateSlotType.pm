
package Paws::LexModelsV2::UpdateSlotType;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has ParentSlotTypeSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentSlotTypeSignature');
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'slotTypeId', required => 1);
  has SlotTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeName', required => 1);
  has SlotTypeValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotTypeValue]', traits => ['NameInRequest'], request_name => 'slotTypeValues');
  has ValueSelectionSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueSelectionSetting', traits => ['NameInRequest'], request_name => 'valueSelectionSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateSlotTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateSlotType - Arguments for method UpdateSlotType on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSlotType on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSlotType.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateSlotTypeResponse = $models - v2 -lex->UpdateSlotType(
      BotId                 => 'MyId',
      BotVersion            => 'MyDraftBotVersion',
      LocaleId              => 'MyLocaleId',
      SlotTypeId            => 'MyId',
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
    my $BotId               = $UpdateSlotTypeResponse->BotId;
    my $BotVersion          = $UpdateSlotTypeResponse->BotVersion;
    my $CreationDateTime    = $UpdateSlotTypeResponse->CreationDateTime;
    my $Description         = $UpdateSlotTypeResponse->Description;
    my $LastUpdatedDateTime = $UpdateSlotTypeResponse->LastUpdatedDateTime;
    my $LocaleId            = $UpdateSlotTypeResponse->LocaleId;
    my $ParentSlotTypeSignature =
      $UpdateSlotTypeResponse->ParentSlotTypeSignature;
    my $SlotTypeId            = $UpdateSlotTypeResponse->SlotTypeId;
    my $SlotTypeName          = $UpdateSlotTypeResponse->SlotTypeName;
    my $SlotTypeValues        = $UpdateSlotTypeResponse->SlotTypeValues;
    my $ValueSelectionSetting = $UpdateSlotTypeResponse->ValueSelectionSetting;

    # Returns a L<Paws::LexModelsV2::UpdateSlotTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateSlotType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot that contains the slot type.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the slot type. Must be C<DRAFT>.



=head2 Description => Str

The new description of the slot type.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that contains the slot type.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 ParentSlotTypeSignature => Str

The new built-in slot type that should be used as the parent of this
slot type.



=head2 B<REQUIRED> SlotTypeId => Str

The unique identifier of the slot type to update.



=head2 B<REQUIRED> SlotTypeName => Str

The new name of the slot type.



=head2 SlotTypeValues => ArrayRef[L<Paws::LexModelsV2::SlotTypeValue>]

A new list of values and their optional synonyms that define the values
that the slot type can take.



=head2 B<REQUIRED> ValueSelectionSetting => L<Paws::LexModelsV2::SlotValueSelectionSetting>

The strategy that Amazon Lex should use when deciding on a value from
the list of slot type values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSlotType in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

