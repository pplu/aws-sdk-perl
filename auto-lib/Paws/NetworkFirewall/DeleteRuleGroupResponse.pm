
package Paws::NetworkFirewall::DeleteRuleGroupResponse;
  use Moose;
  has RuleGroupResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleGroupResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteRuleGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleGroupResponse => L<Paws::NetworkFirewall::RuleGroupResponse>

The high-level properties of a rule group. This, along with the
RuleGroup, define the rule group. You can retrieve all objects for a
rule group by calling DescribeRuleGroup.


=head2 _request_id => Str


=cut

1;