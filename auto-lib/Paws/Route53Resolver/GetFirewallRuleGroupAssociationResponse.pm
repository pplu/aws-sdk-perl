
package Paws::Route53Resolver::GetFirewallRuleGroupAssociationResponse;
  use Moose;
  has FirewallRuleGroupAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRuleGroupAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetFirewallRuleGroupAssociationResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupAssociation => L<Paws::Route53Resolver::FirewallRuleGroupAssociation>

The association that you requested.


=head2 _request_id => Str


=cut

1;