
package Paws::LexModelsV2::UpdateBotLocaleResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botLocaleStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has LocaleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeName');
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold');
  has VoiceSettings => (is => 'ro', isa => 'Paws::LexModelsV2::VoiceSettings', traits => ['NameInRequest'], request_name => 'voiceSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBotLocaleResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the updated locale.


=head2 BotLocaleStatus => Str

The current status of the locale. When the bot status is C<Built> the
locale is ready for use.

Valid values are: C<"Creating">, C<"Building">, C<"Built">, C<"ReadyExpressTesting">, C<"Failed">, C<"Deleting">, C<"NotBuilt">, C<"Importing">
=head2 BotVersion => Str

The version of the bot that contains the updated locale.


=head2 CreationDateTime => Str

A timestamp of the date and time that the locale was created.


=head2 Description => Str

The updated description of the locale.


=head2 FailureReasons => ArrayRef[Str|Undef]

If the C<botLocaleStatus> is C<Failed>, the C<failureReasons> field
lists the errors that occurred while building the bot.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the locale was last updated.


=head2 LocaleId => Str

The language and locale of the updated bot locale.


=head2 LocaleName => Str

The updated locale name for the locale.


=head2 NluIntentConfidenceThreshold => Num

The updated confidence threshold for inserting the
C<AMAZON.FallbackIntent> and C<AMAZON.KendraSearchIntent> intents in
the list of possible intents for an utterance.


=head2 VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>

The updated Amazon Polly voice to use for voice interaction with the
user.


=head2 _request_id => Str


=cut

