
package Paws::LexModelsV2::CreateBotLocaleResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botLocaleStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has LocaleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeName');
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold');
  has VoiceSettings => (is => 'ro', isa => 'Paws::LexModelsV2::VoiceSettings', traits => ['NameInRequest'], request_name => 'voiceSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotLocaleResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The specified bot identifier.


=head2 BotLocaleStatus => Str

The status of the bot.

When the status is C<Creating> the bot locale is being configured. When
the status is C<Building> Amazon Lex is building the bot for testing
and use.

If the status of the bot is C<ReadyExpressTesting>, you can test the
bot using the exact utterances specified in the bots' intents. When the
bot is ready for full testing or to run, the status is C<Built>.

If there was a problem with building the bot, the status is C<Failed>.
If the bot was saved but not built, the status is C<NotBuilt>.

Valid values are: C<"Creating">, C<"Building">, C<"Built">, C<"ReadyExpressTesting">, C<"Failed">, C<"Deleting">, C<"NotBuilt">, C<"Importing">
=head2 BotVersion => Str

The specified bot version.


=head2 CreationDateTime => Str

A timestamp specifying the date and time that the bot locale was
created.


=head2 Description => Str

The specified description of the bot locale.


=head2 LocaleId => Str

The specified locale identifier.


=head2 LocaleName => Str

The specified locale name.


=head2 NluIntentConfidenceThreshold => Num

The specified confidence threshold for inserting the
C<AMAZON.FallbackIntent> and C<AMAZON.KendraSearchIntent> intents.


=head2 VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>

The Amazon Polly voice ID that Amazon Lex uses for voice interaction
with the user.


=head2 _request_id => Str


=cut

