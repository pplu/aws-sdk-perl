
package Paws::Route53Resolver::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> tags match the specified criteria, you can
submit another C<ListTagsForResource> request to get the next group of
results. In the next request, specify the value of C<NextToken> from
the previous response.


=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

The tags that are associated with the resource that you specified in
the C<ListTagsForResource> request.


=head2 _request_id => Str


=cut

1;