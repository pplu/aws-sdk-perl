
package Paws::LexModelsV2::DescribeBotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot.


=head2 BotName => Str

The name of the bot.


=head2 BotStatus => Str

The current status of the bot. When the status is C<Available> the bot
is ready to be used in conversations with users.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 CreationDateTime => Str

A timestamp of the date and time that the bot was created.


=head2 DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

Settings for managing data privacy of the bot and its conversations
with users.


=head2 Description => Str

The description of the bot.


=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the bot was last updated.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permission to
access the bot.


=head2 _request_id => Str


=cut

