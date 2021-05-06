
package Paws::WAFv2::DescribeManagedRuleGroupResponse;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::RuleSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::DescribeManagedRuleGroupResponse

=head1 ATTRIBUTES


=head2 Capacity => Int

The web ACL capacity units (WCUs) required for this rule group. AWS WAF
uses web ACL capacity units (WCU) to calculate and control the
operating resources that are used to run your rules, rule groups, and
web ACLs. AWS WAF calculates capacity differently for each rule type,
to reflect each rule's relative cost. Rule group capacity is fixed at
creation, so users can plan their web ACL WCU usage when they use a
rule group. The WCU limit for web ACLs is 1,500.


=head2 Rules => ArrayRef[L<Paws::WAFv2::RuleSummary>]




=head2 _request_id => Str


=cut

1;