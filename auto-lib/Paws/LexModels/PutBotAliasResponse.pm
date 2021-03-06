
package Paws::LexModels::PutBotAliasResponse;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ConversationLogs => (is => 'ro', isa => 'Paws::LexModels::ConversationLogsResponse', traits => ['NameInRequest'], request_name => 'conversationLogs');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBotAliasResponse

=head1 ATTRIBUTES


=head2 BotName => Str

The name of the bot that the alias points to.


=head2 BotVersion => Str

The version of the bot that the alias points to.


=head2 Checksum => Str

The checksum for the current version of the alias.


=head2 ConversationLogs => L<Paws::LexModels::ConversationLogsResponse>

The settings that determine how Amazon Lex uses conversation logs for
the alias.


=head2 CreatedDate => Str

The date that the bot alias was created.


=head2 Description => Str

A description of the alias.


=head2 LastUpdatedDate => Str

The date that the bot alias was updated. When you create a resource,
the creation date and the last updated date are the same.


=head2 Name => Str

The name of the alias.


=head2 Tags => ArrayRef[L<Paws::LexModels::Tag>]

A list of tags associated with a bot.


=head2 _request_id => Str


=cut

