
package Paws::NetworkFirewall::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]

The tags that are associated with the resource.


=head2 _request_id => Str


=cut

1;