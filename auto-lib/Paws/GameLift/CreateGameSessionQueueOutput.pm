# Generated from json/callresult_class.tt

package Paws::GameLift::CreateGameSessionQueueOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_GameSessionQueue/;
  has GameSessionQueue => (is => 'ro', isa => GameLift_GameSessionQueue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GameSessionQueue' => {
                                       'class' => 'Paws::GameLift::GameSessionQueue',
                                       'type' => 'GameLift_GameSessionQueue'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSessionQueueOutput

=head1 ATTRIBUTES


=head2 GameSessionQueue => GameLift_GameSessionQueue

Object that describes the newly created game session queue.


=head2 _request_id => Str


=cut

1;