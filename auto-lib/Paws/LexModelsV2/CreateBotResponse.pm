
package Paws::LexModelsV2::CreateBotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has BotTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'botTags');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has TestBotAliasTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'testBotAliasTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

A unique identifier for a particular bot. You use this to identify the
bot when you call other Amazon Lex API operations.


=head2 BotName => Str

The name specified for the bot.


=head2 BotStatus => Str

Shows the current status of the bot. The bot is first in the
C<Creating> status. Once the bot is read for use, it changes to the
C<Available> status. After the bot is created, you can use the C<Draft>
version of the bot.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 BotTags => L<Paws::LexModelsV2::TagMap>

A list of tags associated with the bot.


=head2 CreationDateTime => Str

A timestamp indicating the date and time that the bot was created.


=head2 DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

The data privacy settings specified for the bot.


=head2 Description => Str

The description specified for the bot.


=head2 IdleSessionTTLInSeconds => Int

The session idle time specified for the bot.


=head2 RoleArn => Str

The IAM role specified for the bot.


=head2 TestBotAliasTags => L<Paws::LexModelsV2::TagMap>

A list of tags associated with the test alias for the bot.


=head2 _request_id => Str


=cut

