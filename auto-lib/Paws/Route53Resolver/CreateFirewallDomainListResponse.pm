
package Paws::Route53Resolver::CreateFirewallDomainListResponse;
  use Moose;
  has FirewallDomainList => (is => 'ro', isa => 'Paws::Route53Resolver::FirewallDomainList');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateFirewallDomainListResponse

=head1 ATTRIBUTES


=head2 FirewallDomainList => L<Paws::Route53Resolver::FirewallDomainList>

The domain list that you just created.


=head2 _request_id => Str


=cut

1;