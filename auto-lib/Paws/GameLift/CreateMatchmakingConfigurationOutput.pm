# Generated from json/callresult_class.tt

package Paws::GameLift::CreateMatchmakingConfigurationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingConfiguration/;
  has Configuration => (is => 'ro', isa => GameLift_MatchmakingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Configuration' => {
                                    'type' => 'GameLift_MatchmakingConfiguration',
                                    'class' => 'Paws::GameLift::MatchmakingConfiguration'
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

Paws::GameLift::CreateMatchmakingConfigurationOutput

=head1 ATTRIBUTES


=head2 Configuration => GameLift_MatchmakingConfiguration

Object that describes the newly created matchmaking configuration.


=head2 _request_id => Str


=cut

1;