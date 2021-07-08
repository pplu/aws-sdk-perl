
package Paws::Route53Resolver::ListResolverQueryLogConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolverQueryLogConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::ResolverQueryLogConfig]');
  has TotalCount => (is => 'ro', isa => 'Int');
  has TotalFilteredCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverQueryLogConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more than C<MaxResults> query logging configurations, you
can submit another C<ListResolverQueryLogConfigs> request to get the
next group of configurations. In the next request, specify the value of
C<NextToken> from the previous response.


=head2 ResolverQueryLogConfigs => ArrayRef[L<Paws::Route53Resolver::ResolverQueryLogConfig>]

A list that contains one C<ResolverQueryLogConfig> element for each
query logging configuration that matches the values that you specified
for C<Filter>.


=head2 TotalCount => Int

The total number of query logging configurations that were created by
the current account in the specified Region. This count can differ from
the number of query logging configurations that are returned in a
C<ListResolverQueryLogConfigs> response, depending on the values that
you specify in the request.


=head2 TotalFilteredCount => Int

The total number of query logging configurations that were created by
the current account in the specified Region and that match the filters
that were specified in the C<ListResolverQueryLogConfigs> request. For
the total number of query logging configurations that were created by
the current account in the specified Region, see C<TotalCount>.


=head2 _request_id => Str


=cut

1;