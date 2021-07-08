
package Paws::Route53Resolver::UpdateFirewallRuleResponse;
  use Moose;
  has FirewallRule => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallRuleResponse

=head1 ATTRIBUTES


=head2 FirewallRule => L<Paws::Route53Resolver::FirewallRule>

The firewall rule that you just updated.


=head2 _request_id => Str


=cut

1;