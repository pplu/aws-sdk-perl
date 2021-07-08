
package Paws::LexModelsV2::BuildBotLocale;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BuildBotLocale');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::BuildBotLocaleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BuildBotLocale - Arguments for method BuildBotLocale on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BuildBotLocale on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method BuildBotLocale.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BuildBotLocale.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $BuildBotLocaleResponse = $models - v2 -lex->BuildBotLocale(
      BotId      => 'MyId',
      BotVersion => 'MyDraftBotVersion',
      LocaleId   => 'MyLocaleId',

    );

    # Results:
    my $BotId           = $BuildBotLocaleResponse->BotId;
    my $BotLocaleStatus = $BuildBotLocaleResponse->BotLocaleStatus;
    my $BotVersion      = $BuildBotLocaleResponse->BotVersion;
    my $LastBuildSubmittedDateTime =
      $BuildBotLocaleResponse->LastBuildSubmittedDateTime;
    my $LocaleId = $BuildBotLocaleResponse->LocaleId;

    # Returns a L<Paws::LexModelsV2::BuildBotLocaleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/BuildBotLocale>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to build. The identifier is returned in the
response from the operation.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to build. This can only be the draft version of
the bot.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that the bot will be used in.
The string must match one of the supported locales. All of the intents,
slot types, and slots used in the bot must have the same locale. For
more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BuildBotLocale in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

