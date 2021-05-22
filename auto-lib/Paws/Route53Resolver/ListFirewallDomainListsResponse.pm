
package Paws::Route53Resolver::ListFirewallDomainListsResponse;
  use Moose;
  has FirewallDomainLists => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::FirewallDomainListMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallDomainListsResponse

=head1 ATTRIBUTES


=head2 FirewallDomainLists => ArrayRef[L<Paws::Route53Resolver::FirewallDomainListMetadata>]

A list of the domain lists that you have defined.

This might be a parital list of the domain lists that you've defined.
For information, see C<MaxResults>.


=head2 NextToken => Str

If objects are still available for retrieval, Resolver returns this
token in the response. To retrieve the next batch of objects, provide
this token in your next request.


=head2 _request_id => Str


=cut

1;