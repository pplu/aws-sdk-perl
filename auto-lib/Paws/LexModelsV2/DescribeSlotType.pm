
package Paws::LexModelsV2::DescribeSlotType;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'slotTypeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeSlotTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeSlotType - Arguments for method DescribeSlotType on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSlotType on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSlotType.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeSlotTypeResponse = $models - v2 -lex->DescribeSlotType(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',
      SlotTypeId => 'MyId',

    );

    # Results:
    my $BotId               = $DescribeSlotTypeResponse->BotId;
    my $BotVersion          = $DescribeSlotTypeResponse->BotVersion;
    my $CreationDateTime    = $DescribeSlotTypeResponse->CreationDateTime;
    my $Description         = $DescribeSlotTypeResponse->Description;
    my $LastUpdatedDateTime = $DescribeSlotTypeResponse->LastUpdatedDateTime;
    my $LocaleId            = $DescribeSlotTypeResponse->LocaleId;
    my $ParentSlotTypeSignature =
      $DescribeSlotTypeResponse->ParentSlotTypeSignature;
    my $SlotTypeId     = $DescribeSlotTypeResponse->SlotTypeId;
    my $SlotTypeName   = $DescribeSlotTypeResponse->SlotTypeName;
    my $SlotTypeValues = $DescribeSlotTypeResponse->SlotTypeValues;
    my $ValueSelectionSetting =
      $DescribeSlotTypeResponse->ValueSelectionSetting;

    # Returns a L<Paws::LexModelsV2::DescribeSlotTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeSlotType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the slot type.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with the slot type.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the slot type to describe.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 B<REQUIRED> SlotTypeId => Str

The identifier of the slot type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSlotType in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

