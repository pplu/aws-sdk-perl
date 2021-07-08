
package Paws::Route53Resolver::ListFirewallConfigsResponse;
  use Moose;
  has FirewallConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::FirewallConfig]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallConfigsResponse

=head1 ATTRIBUTES


=head2 FirewallConfigs => ArrayRef[L<Paws::Route53Resolver::FirewallConfig>]

The configurations for the firewall behavior provided by DNS Firewall
for VPCs from Amazon Virtual Private Cloud (Amazon VPC).


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;