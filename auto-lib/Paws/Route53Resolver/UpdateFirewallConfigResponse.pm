
package Paws::Route53Resolver::UpdateFirewallConfigResponse;
  use Moose;
  has FirewallConfig => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallConfigResponse

=head1 ATTRIBUTES


=head2 FirewallConfig => L<Paws::Route53Resolver::FirewallConfig>

Configuration of the firewall behavior provided by DNS Firewall for a
single VPC.


=head2 _request_id => Str


=cut

1;