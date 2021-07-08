
package Paws::LexModelsV2::DescribeIntent;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeIntent - Arguments for method DescribeIntent on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIntent on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIntent.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeIntentResponse = $models - v2 -lex->DescribeIntent(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      IntentId   => 'MyId',
      LocaleId   => 'MyLocaleId',

    );

    # Results:
    my $BotId                = $DescribeIntentResponse->BotId;
    my $BotVersion           = $DescribeIntentResponse->BotVersion;
    my $CreationDateTime     = $DescribeIntentResponse->CreationDateTime;
    my $Description          = $DescribeIntentResponse->Description;
    my $DialogCodeHook       = $DescribeIntentResponse->DialogCodeHook;
    my $FulfillmentCodeHook  = $DescribeIntentResponse->FulfillmentCodeHook;
    my $InputContexts        = $DescribeIntentResponse->InputContexts;
    my $IntentClosingSetting = $DescribeIntentResponse->IntentClosingSetting;
    my $IntentConfirmationSetting =
      $DescribeIntentResponse->IntentConfirmationSetting;
    my $IntentId              = $DescribeIntentResponse->IntentId;
    my $IntentName            = $DescribeIntentResponse->IntentName;
    my $KendraConfiguration   = $DescribeIntentResponse->KendraConfiguration;
    my $LastUpdatedDateTime   = $DescribeIntentResponse->LastUpdatedDateTime;
    my $LocaleId              = $DescribeIntentResponse->LocaleId;
    my $OutputContexts        = $DescribeIntentResponse->OutputContexts;
    my $ParentIntentSignature = $DescribeIntentResponse->ParentIntentSignature;
    my $SampleUtterances      = $DescribeIntentResponse->SampleUtterances;
    my $SlotPriorities        = $DescribeIntentResponse->SlotPriorities;

    # Returns a L<Paws::LexModelsV2::DescribeIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeIntent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the intent.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with the intent.



=head2 B<REQUIRED> IntentId => Str

The identifier of the intent to describe.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale of the intent to describe.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIntent in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

