# Generated from json/callresult_class.tt

package Paws::GameLift::StartGameSessionPlacementOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_GameSessionPlacement/;
  has GameSessionPlacement => (is => 'ro', isa => GameLift_GameSessionPlacement);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GameSessionPlacement' => {
                                           'class' => 'Paws::GameLift::GameSessionPlacement',
                                           'type' => 'GameLift_GameSessionPlacement'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartGameSessionPlacementOutput

=head1 ATTRIBUTES


=head2 GameSessionPlacement => GameLift_GameSessionPlacement

Object that describes the newly created game session placement. This
object includes all the information provided in the request, as well as
start/end time stamps and placement status.


=head2 _request_id => Str


=cut

1;