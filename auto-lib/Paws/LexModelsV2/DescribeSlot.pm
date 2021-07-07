
package Paws::LexModelsV2::DescribeSlot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has SlotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'slotId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSlot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeSlotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeSlot - Arguments for method DescribeSlot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSlot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeSlot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSlot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeSlotResponse = $models - v2 -lex->DescribeSlot(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      IntentId   => 'MyId',
      LocaleId   => 'MyLocaleId',
      SlotId     => 'MyId',

    );

    # Results:
    my $BotId                 = $DescribeSlotResponse->BotId;
    my $BotVersion            = $DescribeSlotResponse->BotVersion;
    my $CreationDateTime      = $DescribeSlotResponse->CreationDateTime;
    my $Description           = $DescribeSlotResponse->Description;
    my $IntentId              = $DescribeSlotResponse->IntentId;
    my $LastUpdatedDateTime   = $DescribeSlotResponse->LastUpdatedDateTime;
    my $LocaleId              = $DescribeSlotResponse->LocaleId;
    my $MultipleValuesSetting = $DescribeSlotResponse->MultipleValuesSetting;
    my $ObfuscationSetting    = $DescribeSlotResponse->ObfuscationSetting;
    my $SlotId                = $DescribeSlotResponse->SlotId;
    my $SlotName              = $DescribeSlotResponse->SlotName;
    my $SlotTypeId            = $DescribeSlotResponse->SlotTypeId;
    my $ValueElicitationSetting =
      $DescribeSlotResponse->ValueElicitationSetting;

    # Returns a L<Paws::LexModelsV2::DescribeSlotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeSlot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the slot.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with the slot.



=head2 B<REQUIRED> IntentId => Str

The identifier of the intent that contains the slot.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the slot to describe. The
string must match one of the supported locales. For more information,
see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 B<REQUIRED> SlotId => Str

The unique identifier for the slot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSlot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

