
package Paws::WAFV2::CreateRuleGroupResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::WAFV2::RuleGroupSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateRuleGroupResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::WAFV2::RuleGroupSummary>

High-level information about a RuleGroup, returned by operations like
create and list. This provides information like the ID, that you can
use to retrieve and manage a C<RuleGroup>, and the ARN, that you
provide to the RuleGroupReferenceStatement to use the rule group in a
Rule.


=head2 _request_id => Str


=cut

1;