
package Paws::GameLift::CreateMatchmakingRuleSetOutput;
  use Moose;
  has RuleSet => (is => 'ro', isa => 'Paws::GameLift::MatchmakingRuleSet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateMatchmakingRuleSetOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSet => L<Paws::GameLift::MatchmakingRuleSet>

Object that describes the newly created matchmaking rule set.


=head2 _request_id => Str


=cut

1;