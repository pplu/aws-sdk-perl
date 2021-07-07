
package Paws::Route53Resolver::AssociateFirewallRuleGroupResponse;
  use Moose;
  has FirewallRuleGroupAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRuleGroupAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateFirewallRuleGroupResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupAssociation => L<Paws::Route53Resolver::FirewallRuleGroupAssociation>

The association that you just created. The association has an ID that
you can use to identify it in other requests, like update and delete.


=head2 _request_id => Str


=cut

1;