
package Paws::LexModelsV2::DescribeBotAliasResponse;
  use Moose;
  has BotAliasHistoryEvents => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotAliasHistoryEvent]', traits => ['NameInRequest'], request_name => 'botAliasHistoryEvents');
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotAliasLocaleSettings => (is => 'ro', isa => 'Paws::LexModelsV2::BotAliasLocaleSettingsMap', traits => ['NameInRequest'], request_name => 'botAliasLocaleSettings');
  has BotAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasName');
  has BotAliasStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasStatus');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ConversationLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ConversationLogSettings', traits => ['NameInRequest'], request_name => 'conversationLogSettings');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has SentimentAnalysisSettings => (is => 'ro', isa => 'Paws::LexModelsV2::SentimentAnalysisSettings', traits => ['NameInRequest'], request_name => 'sentimentAnalysisSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotAliasResponse

=head1 ATTRIBUTES


=head2 BotAliasHistoryEvents => ArrayRef[L<Paws::LexModelsV2::BotAliasHistoryEvent>]

A list of events that affect a bot alias. For example, an event is
recorded when the version that the alias points to changes.


=head2 BotAliasId => Str

The identifier of the bot alias.


=head2 BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>

The locale settings that are unique to the alias.


=head2 BotAliasName => Str

The name of the bot alias.


=head2 BotAliasStatus => Str

The current status of the alias. When the alias is C<Available>, the
alias is ready for use with your bot.

Valid values are: C<"Creating">, C<"Available">, C<"Deleting">, C<"Failed">
=head2 BotId => Str

The identifier of the bot associated with the bot alias.


=head2 BotVersion => Str

The version of the bot associated with the bot alias.


=head2 ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>

Specifics of how Amazon Lex logs text and audio conversations with the
bot associated with the alias.


=head2 CreationDateTime => Str

A timestamp of the date and time that the alias was created.


=head2 Description => Str

The description of the bot alias.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the alias was last updated.


=head2 SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>




=head2 _request_id => Str


=cut

