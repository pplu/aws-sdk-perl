# Generated from json/callresult_class.tt

package Paws::GameLift::CreatePlayerSessionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_PlayerSession/;
  has PlayerSessions => (is => 'ro', isa => ArrayRef[GameLift_PlayerSession]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlayerSessions' => {
                                     'class' => 'Paws::GameLift::PlayerSession',
                                     'type' => 'ArrayRef[GameLift_PlayerSession]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSessionsOutput

=head1 ATTRIBUTES


=head2 PlayerSessions => ArrayRef[GameLift_PlayerSession]

Collection of player session objects created for the added players.


=head2 _request_id => Str


=cut

1;