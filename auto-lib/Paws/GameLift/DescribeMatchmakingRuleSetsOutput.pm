# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeMatchmakingRuleSetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingRuleSet/;
  has NextToken => (is => 'ro', isa => Str);
  has RuleSets => (is => 'ro', isa => ArrayRef[GameLift_MatchmakingRuleSet], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleSets' => {
                               'class' => 'Paws::GameLift::MatchmakingRuleSet',
                               'type' => 'ArrayRef[GameLift_MatchmakingRuleSet]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'RuleSets' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmakingRuleSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 B<REQUIRED> RuleSets => ArrayRef[GameLift_MatchmakingRuleSet]

Collection of requested matchmaking rule set objects.


=head2 _request_id => Str


=cut

1;