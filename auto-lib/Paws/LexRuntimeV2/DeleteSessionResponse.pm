
package Paws::LexRuntimeV2::DeleteSessionResponse;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAliasId');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::DeleteSessionResponse

=head1 ATTRIBUTES


=head2 BotAliasId => Str

The alias identifier in use for the bot that contained the session
data.


=head2 BotId => Str

The identifier of the bot that contained the session data.


=head2 LocaleId => Str

The locale where the session was used.


=head2 SessionId => Str

The identifier of the deleted session.


=head2 _request_id => Str


=cut

