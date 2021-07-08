
package Paws::NetworkFirewall::ListRuleGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleGroups => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::RuleGroupMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 RuleGroups => ArrayRef[L<Paws::NetworkFirewall::RuleGroupMetadata>]

The rule group metadata objects that you've defined. Depending on your
setting for max results and the number of rule groups, this might not
be the full list.


=head2 _request_id => Str


=cut

1;