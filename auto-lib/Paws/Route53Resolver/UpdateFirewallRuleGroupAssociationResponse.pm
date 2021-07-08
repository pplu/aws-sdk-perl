
package Paws::Route53Resolver::UpdateFirewallRuleGroupAssociationResponse;
  use Moose;
  has FirewallRuleGroupAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRuleGroupAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallRuleGroupAssociationResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupAssociation => L<Paws::Route53Resolver::FirewallRuleGroupAssociation>

The association that you just updated.


=head2 _request_id => Str


=cut

1;