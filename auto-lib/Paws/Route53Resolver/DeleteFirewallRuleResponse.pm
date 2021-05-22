
package Paws::Route53Resolver::DeleteFirewallRuleResponse;
  use Moose;
  has FirewallRule => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DeleteFirewallRuleResponse

=head1 ATTRIBUTES


=head2 FirewallRule => L<Paws::Route53Resolver::FirewallRule>

The specification for the firewall rule that you just deleted.


=head2 _request_id => Str


=cut

1;