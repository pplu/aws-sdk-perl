
package Paws::NetworkFirewall::DescribeFirewallResponse;
  use Moose;
  has Firewall => (is => 'ro', isa => 'Paws::NetworkFirewall::Firewall');
  has FirewallStatus => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallStatus');
  has UpdateToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeFirewallResponse

=head1 ATTRIBUTES


=head2 Firewall => L<Paws::NetworkFirewall::Firewall>

The configuration settings for the firewall. These settings include the
firewall policy and the subnets in your VPC to use for the firewall
endpoints.


=head2 FirewallStatus => L<Paws::NetworkFirewall::FirewallStatus>

Detailed information about the current status of a Firewall. You can
retrieve this for a firewall by calling DescribeFirewall and providing
the firewall name and ARN.


=head2 UpdateToken => Str

An optional token that you can use for optimistic locking. Network
Firewall returns a token to your requests that access the firewall. The
token marks the state of the firewall resource at the time of the
request.

To make an unconditional change to the firewall, omit the token in your
update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.

To make a conditional change to the firewall, provide the token in your
update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an C<InvalidTokenException>. If this happens,
retrieve the firewall again to get a current copy of it with a new
token. Reapply your changes as needed, then try the operation again
using the new token.


=head2 _request_id => Str


=cut

1;