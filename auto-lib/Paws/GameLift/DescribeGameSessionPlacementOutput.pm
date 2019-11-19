# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeGameSessionPlacementOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_GameSessionPlacement/;
  has GameSessionPlacement => (is => 'ro', isa => GameLift_GameSessionPlacement);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GameSessionPlacement' => {
                                           'type' => 'GameLift_GameSessionPlacement',
                                           'class' => 'Paws::GameLift::GameSessionPlacement'
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

Paws::GameLift::DescribeGameSessionPlacementOutput

=head1 ATTRIBUTES


=head2 GameSessionPlacement => GameLift_GameSessionPlacement

Object that describes the requested game session placement.


=head2 _request_id => Str


=cut

1;