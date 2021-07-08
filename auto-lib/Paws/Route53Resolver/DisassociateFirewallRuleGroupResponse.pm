
package Paws::Route53Resolver::DisassociateFirewallRuleGroupResponse;
  use Moose;
  has FirewallRuleGroupAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRuleGroupAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DisassociateFirewallRuleGroupResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroupAssociation => L<Paws::Route53Resolver::FirewallRuleGroupAssociation>

The firewall rule group association that you just removed.


=head2 _request_id => Str


=cut

1;