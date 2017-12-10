
package Paws::WAF::ListActivatedRulesInRuleGroupResponse;
  use Moose;
  has ActivatedRules => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ActivatedRule]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListActivatedRulesInRuleGroupResponse

=head1 ATTRIBUTES


=head2 ActivatedRules => ArrayRef[L<Paws::WAF::ActivatedRule>]

An array of C<ActivatedRules> objects.


=head2 NextMarker => Str

If you have more C<ActivatedRules> than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<ActivatedRules>, submit another
C<ListActivatedRulesInRuleGroup> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;