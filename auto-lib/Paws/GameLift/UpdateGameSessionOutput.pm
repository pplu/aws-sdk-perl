# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateGameSessionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_GameSession/;
  has GameSession => (is => 'ro', isa => GameLift_GameSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GameSession' => {
                                  'class' => 'Paws::GameLift::GameSession',
                                  'type' => 'GameLift_GameSession'
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

Paws::GameLift::UpdateGameSessionOutput

=head1 ATTRIBUTES


=head2 GameSession => GameLift_GameSession

Object that contains the updated game session metadata.


=head2 _request_id => Str


=cut

1;