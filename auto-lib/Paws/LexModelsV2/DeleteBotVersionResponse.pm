
package Paws::LexModelsV2::DeleteBotVersionResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotVersionResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that is being deleted.


=head2 BotStatus => Str

The current status of the bot.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 BotVersion => Str

The version of the bot that is being deleted.


=head2 _request_id => Str


=cut

