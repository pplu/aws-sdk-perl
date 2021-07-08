
package Paws::Route53Resolver::ListFirewallRuleGroupsResponse;
  use Moose;
  has FirewallRuleGroups => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::FirewallRuleGroupMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRuleGroupsResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroups => ArrayRef[L<Paws::Route53Resolver::FirewallRuleGroupMetadata>]

A list of your firewall rule groups.

This might be a partial list of the rule groups that you have defined.
For information, see C<MaxResults>.


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;