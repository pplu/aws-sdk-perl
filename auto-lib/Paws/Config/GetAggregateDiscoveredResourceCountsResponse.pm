
package Paws::Config::GetAggregateDiscoveredResourceCountsResponse;
  use Moose;
  has GroupByKey => (is => 'ro', isa => 'Str');
  has GroupedResourceCounts => (is => 'ro', isa => 'ArrayRef[Paws::Config::GroupedResourceCount]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalDiscoveredResources => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateDiscoveredResourceCountsResponse

=head1 ATTRIBUTES


=head2 GroupByKey => Str

The key passed into the request object. If C<GroupByKey> is not
provided, the result will be empty.


=head2 GroupedResourceCounts => ArrayRef[L<Paws::Config::GroupedResourceCount>]

Returns a list of GroupedResourceCount objects.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 B<REQUIRED> TotalDiscoveredResources => Int

The total number of resources that are present in an aggregator with
the filters that you provide.


=head2 _request_id => Str


=cut

1;