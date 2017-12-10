
package Paws::WAF::ListRuleGroupsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has RuleGroups => (is => 'ro', isa => 'ArrayRef[Paws::WAF::RuleGroupSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RuleGroups> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<RuleGroups>, submit another C<ListRuleGroups> request,
and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 RuleGroups => ArrayRef[L<Paws::WAF::RuleGroupSummary>]

An array of RuleGroup objects.


=head2 _request_id => Str


=cut

1;