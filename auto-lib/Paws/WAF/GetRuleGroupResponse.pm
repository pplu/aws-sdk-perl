
package Paws::WAF::GetRuleGroupResponse;
  use Moose;
  has RuleGroup => (is => 'ro', isa => 'Paws::WAF::RuleGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRuleGroupResponse

=head1 ATTRIBUTES


=head2 RuleGroup => L<Paws::WAF::RuleGroup>

Information about the RuleGroup that you specified in the
C<GetRuleGroup> request.


=head2 _request_id => Str


=cut

1;