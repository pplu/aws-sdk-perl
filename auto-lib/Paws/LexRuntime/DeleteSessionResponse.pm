
package Paws::LexRuntime::DeleteSessionResponse;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAlias');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::DeleteSessionResponse

=head1 ATTRIBUTES


=head2 BotAlias => Str

The alias in use for the bot associated with the session data.


=head2 BotName => Str

The name of the bot associated with the session data.


=head2 SessionId => Str

The unique identifier for the session.


=head2 UserId => Str

The ID of the client application user.


=head2 _request_id => Str


=cut

