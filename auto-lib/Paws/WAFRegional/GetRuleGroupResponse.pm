
package Paws::WAFRegional::GetRuleGroupResponse;
  use Moose;
  has RuleGroup => (is => 'ro', isa => 'Paws::WAFRegional::RuleGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRuleGroupResponse

=head1 ATTRIBUTES


=head2 RuleGroup => L<Paws::WAFRegional::RuleGroup>

Information about the RuleGroup that you specified in the
C<GetRuleGroup> request.


=head2 _request_id => Str


=cut

1;