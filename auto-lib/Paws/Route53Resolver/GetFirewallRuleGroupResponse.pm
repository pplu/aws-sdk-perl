
package Paws::Route53Resolver::GetFirewallRuleGroupResponse;
  use Moose;
  has FirewallRuleGroup => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRuleGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetFirewallRuleGroupResponse

=head1 ATTRIBUTES


=head2 FirewallRuleGroup => L<Paws::Route53Resolver::FirewallRuleGroup>

A collection of rules used to filter DNS network traffic.


=head2 _request_id => Str


=cut

1;