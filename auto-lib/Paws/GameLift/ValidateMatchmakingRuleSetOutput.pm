
package Paws::GameLift::ValidateMatchmakingRuleSetOutput;
  use Moose;
  has Valid => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ValidateMatchmakingRuleSetOutput

=head1 ATTRIBUTES


=head2 Valid => Bool

Response indicating whether or not the rule set is valid.


=head2 _request_id => Str


=cut

1;