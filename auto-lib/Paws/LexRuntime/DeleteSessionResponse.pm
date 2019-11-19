
package Paws::LexRuntime::DeleteSessionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexRuntime::Types qw//;
  has BotAlias => (is => 'ro', isa => Str);
  has BotName => (is => 'ro', isa => Str);
  has SessionId => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UserId' => 'userId',
                       'BotAlias' => 'botAlias',
                       'SessionId' => 'sessionId',
                       'BotName' => 'botName'
                     },
  'types' => {
               'UserId' => {
                             'type' => 'Str'
                           },
               'BotAlias' => {
                               'type' => 'Str'
                             },
               'SessionId' => {
                                'type' => 'Str'
                              },
               'BotName' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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

