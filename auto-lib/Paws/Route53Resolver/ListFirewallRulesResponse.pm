
package Paws::Route53Resolver::ListFirewallRulesResponse;
  use Moose;
  has FirewallRules => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::FirewallRule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRulesResponse

=head1 ATTRIBUTES


=head2 FirewallRules => ArrayRef[L<Paws::Route53Resolver::FirewallRule>]

A list of the rules that you have defined.

This might be a partial list of the firewall rules that you've defined.
For information, see C<MaxResults>.


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;