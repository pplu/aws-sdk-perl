
package Paws::LexModelsV2::UpdateBotResponse;
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

Paws::LexModelsV2::UpdateBotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot that was updated.


=head2 BotName => Str

The name of the bot after the update.


=head2 BotStatus => Str

Shows the current status of the bot. The bot is first in the
C<Creating> status. Once the bot is read for use, it changes to the
C<Available> status. After the bot is created, you can use the C<DRAFT>
version of the bot.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 CreationDateTime => Str

A timestamp of the date and time that the bot was created.


=head2 DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

The data privacy settings for the bot after the update.


=head2 Description => Str

The description of the bot after the update.


=head2 IdleSessionTTLInSeconds => Int

The session timeout, in seconds, for the bot after the update.


=head2 LastUpdatedDateTime => Str

A timestamp of the date and time that the bot was last updated.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used by the bot after
the update.


=head2 _request_id => Str


=cut

