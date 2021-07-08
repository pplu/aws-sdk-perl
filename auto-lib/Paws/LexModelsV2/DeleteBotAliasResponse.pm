
package Paws::LexModelsV2::DeleteBotAliasResponse;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotAliasStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasStatus');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotAliasResponse

=head1 ATTRIBUTES


=head2 BotAliasId => Str

The unique identifier of the bot alias to delete.


=head2 BotAliasStatus => Str

The current status of the alias. The status is C<Deleting> while the
alias is in the process of being deleted. Once the alias is deleted, it
will no longer appear in the list of aliases returned by the
C<ListBotAliases> operation.

Valid values are: C<"Creating">, C<"Available">, C<"Deleting">, C<"Failed">
=head2 BotId => Str

The unique identifier of the bot that contains the alias to delete.


=head2 _request_id => Str


=cut

