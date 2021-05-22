
package Paws::NetworkFirewall::DeleteFirewallPolicyResponse;
  use Moose;
  has FirewallPolicyResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallPolicyResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteFirewallPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirewallPolicyResponse => L<Paws::NetworkFirewall::FirewallPolicyResponse>

The object containing the definition of the FirewallPolicyResponse that
you asked to delete.


=head2 _request_id => Str


=cut

1;