
package Paws::NetworkFirewall::ListFirewallsResponse;
  use Moose;
  has Firewalls => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::FirewallMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListFirewallsResponse

=head1 ATTRIBUTES


=head2 Firewalls => ArrayRef[L<Paws::NetworkFirewall::FirewallMetadata>]

The firewall metadata objects for the VPCs that you specified.
Depending on your setting for max results and the number of firewalls
you have, a single call might not be the full list.


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 _request_id => Str


=cut

1;