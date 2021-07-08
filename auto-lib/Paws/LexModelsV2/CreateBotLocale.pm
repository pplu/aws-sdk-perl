
package Paws::LexModelsV2::CreateBotLocale;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId', required => 1);
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold', required => 1);
  has VoiceSettings => (is => 'ro', isa => 'Paws::LexModelsV2::VoiceSettings', traits => ['NameInRequest'], request_name => 'voiceSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBotLocale');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateBotLocaleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotLocale - Arguments for method CreateBotLocale on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBotLocale on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateBotLocale.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBotLocale.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateBotLocaleResponse = $models - v2 -lex->CreateBotLocale(
      BotId                        => 'MyId',
      BotVersion                   => 'MyDraftBotVersion',
      LocaleId                     => 'MyLocaleId',
      NluIntentConfidenceThreshold => 1,
      Description                  => 'MyDescription',       # OPTIONAL
      VoiceSettings                => {
        VoiceId => 'MyVoiceId',

      },                                                     # OPTIONAL
    );

    # Results:
    my $BotId            = $CreateBotLocaleResponse->BotId;
    my $BotLocaleStatus  = $CreateBotLocaleResponse->BotLocaleStatus;
    my $BotVersion       = $CreateBotLocaleResponse->BotVersion;
    my $CreationDateTime = $CreateBotLocaleResponse->CreationDateTime;
    my $Description      = $CreateBotLocaleResponse->Description;
    my $LocaleId         = $CreateBotLocaleResponse->LocaleId;
    my $LocaleName       = $CreateBotLocaleResponse->LocaleName;
    my $NluIntentConfidenceThreshold =
      $CreateBotLocaleResponse->NluIntentConfidenceThreshold;
    my $VoiceSettings = $CreateBotLocaleResponse->VoiceSettings;

    # Returns a L<Paws::LexModelsV2::CreateBotLocaleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateBotLocale>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to create the locale for.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to create the locale for. This can only be the
draft version of the bot.



=head2 Description => Str

A description of the bot locale. Use this to help identify the bot
locale in lists.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that the bot will be used in.
The string must match one of the supported locales. All of the intents,
slot types, and slots used in the bot must have the same locale. For
more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 B<REQUIRED> NluIntentConfidenceThreshold => Num

Determines the threshold where Amazon Lex will insert the
C<AMAZON.FallbackIntent>, C<AMAZON.KendraSearchIntent>, or both when
returning alternative intents. C<AMAZON.FallbackIntent> and
C<AMAZON.KendraSearchIntent> are only inserted if they are configured
for the bot.

For example, suppose a bot is configured with the confidence threshold
of 0.80 and the C<AMAZON.FallbackIntent>. Amazon Lex returns three
alternative intents with the following confidence scores: IntentA
(0.70), IntentB (0.60), IntentC (0.50). The response from the PostText
operation would be:

=over

=item *

AMAZON.FallbackIntent

=item *

IntentA

=item *

IntentB

=item *

IntentC

=back




=head2 VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>

The Amazon Polly voice ID that Amazon Lex uses for voice interaction
with the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBotLocale in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

