
package Paws::NetworkFirewall::CreateFirewallResponse;
  use Moose;
  has Firewall => (is => 'ro', isa => 'Paws::NetworkFirewall::Firewall');
  has FirewallStatus => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::CreateFirewallResponse

=head1 ATTRIBUTES


=head2 Firewall => L<Paws::NetworkFirewall::Firewall>

The configuration settings for the firewall. These settings include the
firewall policy and the subnets in your VPC to use for the firewall
endpoints.


=head2 FirewallStatus => L<Paws::NetworkFirewall::FirewallStatus>

Detailed information about the current status of a Firewall. You can
retrieve this for a firewall by calling DescribeFirewall and providing
the firewall name and ARN.


=head2 _request_id => Str


=cut

1;