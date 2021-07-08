
package Paws::LexModelsV2::UpdateBotAliasResponse;
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
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has SentimentAnalysisSettings => (is => 'ro', isa => 'Paws::LexModelsV2::SentimentAnalysisSettings', traits => ['NameInRequest'], request_name => 'sentimentAnalysisSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBotAliasResponse

=head1 ATTRIBUTES


=head2 BotAliasId => Str

The identifier of the updated bot alias.


=head2 BotAliasLocaleSettings => L<Paws::LexModelsV2::BotAliasLocaleSettingsMap>

The updated Lambda functions to use in each locale for the bot alias.


=head2 BotAliasName => Str

The updated name of the bot alias.


=head2 BotAliasStatus => Str

The current status of the bot alias. When the status is C<Available>
the alias is ready for use.

Valid values are: C<"Creating">, C<"Available">, C<"Deleting">, C<"Failed">
=head2 BotId => Str

The identifier of the bot with the updated alias.


=head2 BotVersion => Str

The updated version of the bot that the alias points to.


=head2 ConversationLogSettings => L<Paws::LexModelsV2::ConversationLogSettings>

The updated settings for storing conversation logs in Amazon CloudWatch
Logs and Amazon S3 buckets.


=head2 CreationDateTime => Str

A timestamp of the date and time that the bot was created.


=head2 Description => Str

The updated description of the bot alias.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the bot was last updated.


=head2 SentimentAnalysisSettings => L<Paws::LexModelsV2::SentimentAnalysisSettings>




=head2 _request_id => Str


=cut

