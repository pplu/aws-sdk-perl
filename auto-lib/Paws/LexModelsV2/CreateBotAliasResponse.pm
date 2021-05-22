
package Paws::LexModelsV2::CreateBotAliasResponse;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotAliasLocaleSettings => (is => 'ro', isa => 'Paws::LexModelsV2::BotAliasLocaleSettingsMap', traits => ['NameInRequest'], request_name => 'botAliasLocaleSettings');
  has BotAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasName');
  has BotAliasStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasStatus');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has ConversationLogSettings => (is => 'ro', isa => 'Paws::LexModelsV2::ConversationLogSettings', traits => ['NameInRequest'], request_name => 'conversationLogSettings');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SentimentAnalysisSettings => (is => 'ro', isa => 'Paws::LexModelsV2::SentimentAnalysisSettings', traits => ['NameInRequest'], request_name => 'sentimentAnalysisSettings');
  has Tags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotAliasResponse

=head1 ATTRIBUTES


=head2 BotAliasId => Str

The unique identifier of the bot alias.


=head2 BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>

Configuration information for a specific locale.


=head2 BotAliasName => Str

The name specified for the bot alias.


=head2 BotAliasStatus => Str

The current status of the alias. The alias is first put into the
C<Creating> state. When the alias is ready to be used, it is put into
the C<Available> state. You can use the C<DescribeBotAlias> operation
to get the current state of an alias.

Valid values are: C<"Creating">, C<"Available">, C<"Deleting">, C<"Failed">
=head2 BotId => Str

The unique identifier of the bot that this alias applies to.


=head2 BotVersion => Str

The version of the bot associated with this alias.


=head2 ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>

The conversation log settings specified for the alias.


=head2 CreationDateTime => Str

A Unix timestamp indicating the date and time that the bot alias was
created.


=head2 Description => Str

The description specified for the bot alias.


=head2 SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>




=head2 Tags => L<Paws::LexModelsV2::TagMap>

A list of tags associated with the bot alias.


=head2 _request_id => Str


=cut

