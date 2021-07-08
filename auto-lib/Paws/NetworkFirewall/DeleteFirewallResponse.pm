
package Paws::NetworkFirewall::DeleteFirewallResponse;
  use Moose;
  has Firewall => (is => 'ro', isa => 'Paws::NetworkFirewall::Firewall');
  has FirewallStatus => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteFirewallResponse

=head1 ATTRIBUTES


=head2 Firewall => L<Paws::NetworkFirewall::Firewall>




=head2 FirewallStatus => L<Paws::NetworkFirewall::FirewallStatus>




=head2 _request_id => Str


=cut

1;