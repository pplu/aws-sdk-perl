# Generated from json/callresult_class.tt

package Paws::GameLift::CreateMatchmakingRuleSetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingRuleSet/;
  has RuleSet => (is => 'ro', isa => GameLift_MatchmakingRuleSet, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RuleSet' => 1
                  },
  'types' => {
               'RuleSet' => {
                              'type' => 'GameLift_MatchmakingRuleSet',
                              'class' => 'Paws::GameLift::MatchmakingRuleSet'
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

Paws::GameLift::CreateMatchmakingRuleSetOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSet => GameLift_MatchmakingRuleSet

Object that describes the newly created matchmaking rule set.


=head2 _request_id => Str


=cut

1;