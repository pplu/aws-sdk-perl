
package Paws::Route53Resolver::ListResolverQueryLogConfigAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolverQueryLogConfigAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::ResolverQueryLogConfigAssociation]');
  has TotalCount => (is => 'ro', isa => 'Int');
  has TotalFilteredCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverQueryLogConfigAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more than C<MaxResults> query logging associations, you
can submit another C<ListResolverQueryLogConfigAssociations> request to
get the next group of associations. In the next request, specify the
value of C<NextToken> from the previous response.


=head2 ResolverQueryLogConfigAssociations => ArrayRef[L<Paws::Route53Resolver::ResolverQueryLogConfigAssociation>]

A list that contains one C<ResolverQueryLogConfigAssociations> element
for each query logging association that matches the values that you
specified for C<Filter>.


=head2 TotalCount => Int

The total number of query logging associations that were created by the
current account in the specified Region. This count can differ from the
number of associations that are returned in a
C<ListResolverQueryLogConfigAssociations> response, depending on the
values that you specify in the request.


=head2 TotalFilteredCount => Int

The total number of query logging associations that were created by the
current account in the specified Region and that match the filters that
were specified in the C<ListResolverQueryLogConfigAssociations>
request. For the total number of associations that were created by the
current account in the specified Region, see C<TotalCount>.


=head2 _request_id => Str


=cut

1;