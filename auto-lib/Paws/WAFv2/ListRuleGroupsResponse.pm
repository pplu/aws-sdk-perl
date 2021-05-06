
package Paws::WAFv2::ListRuleGroupsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has RuleGroups => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::RuleGroupSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::ListRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, AWS WAF returns a C<NextMarker> value in the response. To
retrieve the next batch of objects, provide the marker from the prior
call in your next request.


=head2 RuleGroups => ArrayRef[L<Paws::WAFv2::RuleGroupSummary>]




=head2 _request_id => Str


=cut

1;