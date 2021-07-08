
package Paws::LexModelsV2::DescribeBotLocaleResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleHistoryEvents => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotLocaleHistoryEvent]', traits => ['NameInRequest'], request_name => 'botLocaleHistoryEvents');
  has BotLocaleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botLocaleStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has IntentsCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'intentsCount');
  has LastBuildSubmittedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastBuildSubmittedDateTime');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has LocaleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeName');
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold');
  has SlotTypesCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'slotTypesCount');
  has VoiceSettings => (is => 'ro', isa => 'Paws::LexModelsV2::VoiceSettings', traits => ['NameInRequest'], request_name => 'voiceSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotLocaleResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot associated with the locale.


=head2 BotLocaleHistoryEvents => ArrayRef[L<Paws::LexModelsV2::BotLocaleHistoryEvent>]

History of changes, such as when a locale is used in an alias, that
have taken place for the locale.


=head2 BotLocaleStatus => Str

The status of the bot. If the status is C<Failed>, the reasons for the
failure are listed in the C<failureReasons> field.

Valid values are: C<"Creating">, C<"Building">, C<"Built">, C<"ReadyExpressTesting">, C<"Failed">, C<"Deleting">, C<"NotBuilt">, C<"Importing">
=head2 BotVersion => Str

The identifier of the version of the bot associated with the locale.


=head2 CreationDateTime => Str

The date and time that the locale was created.


=head2 Description => Str

The description of the locale.


=head2 FailureReasons => ArrayRef[Str|Undef]

if C<botLocaleStatus> is C<Failed>, Amazon Lex explains why it failed
to build the bot.


=head2 IntentsCount => Int

The number of intents defined for the locale.


=head2 LastBuildSubmittedDateTime => Str

The date and time that the locale was last submitted for building.


=head2 LastUpdatedDateTime => Str

The date and time that the locale was last updated.


=head2 LocaleId => Str

The unique identifier of the described locale.


=head2 LocaleName => Str

The name of the locale.


=head2 NluIntentConfidenceThreshold => Num

The confidence threshold where Amazon Lex inserts the
C<AMAZON.FallbackIntent> and C<AMAZON.KendraSearchIntent> intents in
the list of possible intents for an utterance.


=head2 SlotTypesCount => Int

The number of slot types defined for the locale.


=head2 VoiceSettings => L<Paws::LexModelsV2::VoiceSettings>

The Amazon Polly voice Amazon Lex uses for voice interaction with the
user.


=head2 _request_id => Str


=cut

