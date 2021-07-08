
package Paws::NetworkFirewall::DescribeFirewallPolicyResponse;
  use Moose;
  has FirewallPolicy => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallPolicy');
  has FirewallPolicyResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallPolicyResponse', required => 1);
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeFirewallPolicyResponse

=head1 ATTRIBUTES


=head2 FirewallPolicy => L<Paws::NetworkFirewall::FirewallPolicy>

The policy for the specified firewall policy.


=head2 B<REQUIRED> FirewallPolicyResponse => L<Paws::NetworkFirewall::FirewallPolicyResponse>

The high-level properties of a firewall policy. This, along with the
FirewallPolicy, define the policy. You can retrieve all objects for a
firewall policy by calling DescribeFirewallPolicy.


=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the firewall policy. The token marks the
state of the policy resource at the time of the request.

To make changes to the policy, you provide the token in your request.
Network Firewall uses the token to ensure that the policy hasn't
changed since you last retrieved it. If it has changed, the operation
fails with an C<InvalidTokenException>. If this happens, retrieve the
firewall policy again to get a current copy of it with current token.
Reapply your changes as needed, then try the operation again using the
new token.


=head2 _request_id => Str


=cut

1;