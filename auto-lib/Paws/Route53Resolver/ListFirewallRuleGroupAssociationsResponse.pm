
package Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse;
  use Moose;
  has FirewallRuleGroupAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::FirewallRuleGroupAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupAssociations => ArrayRef[L<Paws::Route53Resolver::FirewallRuleGroupAssociation>]

A list of your firewall rule group associations.

This might be a partial list of the associations that you have defined.
For information, see C<MaxResults>.


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;