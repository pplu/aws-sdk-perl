
package Paws::LexModelsV2::DeleteBotResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier of the bot that Amazon Lex is deleting.


=head2 BotStatus => Str

The current status of the bot. The status is C<Deleting> while the bot
and its associated resources are being deleted.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 _request_id => Str


=cut

