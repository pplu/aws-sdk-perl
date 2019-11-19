# Generated from json/callresult_class.tt

package Paws::GameLift::StopGameSessionPlacementOutput;
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
                                           'type' => 'GameLift_GameSessionPlacement',
                                           'class' => 'Paws::GameLift::GameSessionPlacement'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StopGameSessionPlacementOutput

=head1 ATTRIBUTES


=head2 GameSessionPlacement => GameLift_GameSessionPlacement

Object that describes the canceled game session placement, with
C<CANCELLED> status and an end time stamp.


=head2 _request_id => Str


=cut

1;