# Generated from json/callresult_class.tt

package Paws::GameLift::CreateMatchmakingRuleSetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingRuleSet/;
  has RuleSet => (is => 'ro', isa => GameLift_MatchmakingRuleSet, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuleSet' => {
                              'class' => 'Paws::GameLift::MatchmakingRuleSet',
                              'type' => 'GameLift_MatchmakingRuleSet'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'RuleSet' => 1
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