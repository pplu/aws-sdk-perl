
package Paws::Route53Resolver::ListFirewallDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallDomainsResponse

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[Str|Undef]

A list of the domains in the firewall domain list.

This might be a parital list of the domains that you've defined in the
domain list. For information, see C<MaxResults>.


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;