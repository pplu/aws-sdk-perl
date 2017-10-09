
package Paws::GameLift::DescribeMatchmakingRuleSetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleSets => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::MatchmakingRuleSet]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmakingRuleSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 B<REQUIRED> RuleSets => ArrayRef[L<Paws::GameLift::MatchmakingRuleSet>]

Collection of requested matchmaking rule set objects.


=head2 _request_id => Str


=cut

1;