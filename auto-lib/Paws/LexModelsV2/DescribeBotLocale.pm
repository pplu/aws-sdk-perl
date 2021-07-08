
package Paws::LexModelsV2::DescribeBotLocale;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBotLocale');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotLocaleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotLocale - Arguments for method DescribeBotLocale on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBotLocale on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBotLocale.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBotLocale.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotLocaleResponse = $models - v2 -lex->DescribeBotLocale(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',

    );

    # Results:
    my $BotId = $DescribeBotLocaleResponse->BotId;
    my $BotLocaleHistoryEvents =
      $DescribeBotLocaleResponse->BotLocaleHistoryEvents;
    my $BotLocaleStatus  = $DescribeBotLocaleResponse->BotLocaleStatus;
    my $BotVersion       = $DescribeBotLocaleResponse->BotVersion;
    my $CreationDateTime = $DescribeBotLocaleResponse->CreationDateTime;
    my $Description      = $DescribeBotLocaleResponse->Description;
    my $FailureReasons   = $DescribeBotLocaleResponse->FailureReasons;
    my $IntentsCount     = $DescribeBotLocaleResponse->IntentsCount;
    my $LastBuildSubmittedDateTime =
      $DescribeBotLocaleResponse->LastBuildSubmittedDateTime;
    my $LastUpdatedDateTime = $DescribeBotLocaleResponse->LastUpdatedDateTime;
    my $LocaleId            = $DescribeBotLocaleResponse->LocaleId;
    my $LocaleName          = $DescribeBotLocaleResponse->LocaleName;
    my $NluIntentConfidenceThreshold =
      $DescribeBotLocaleResponse->NluIntentConfidenceThreshold;
    my $SlotTypesCount = $DescribeBotLocaleResponse->SlotTypesCount;
    my $VoiceSettings  = $DescribeBotLocaleResponse->VoiceSettings;

    # Returns a L<Paws::LexModelsV2::DescribeBotLocaleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBotLocale>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the locale.



=head2 B<REQUIRED> BotVersion => Str

The identifier of the version of the bot associated with the locale.



=head2 B<REQUIRED> LocaleId => Str

The unique identifier of the locale to describe. The string must match
one of the supported locales. For more information, see Supported
languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBotLocale in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

