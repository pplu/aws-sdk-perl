
package Paws::Config::DescribePendingAggregationRequestsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PendingAggregationRequests => (is => 'ro', isa => 'ArrayRef[Paws::Config::PendingAggregationRequest]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribePendingAggregationRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 PendingAggregationRequests => ArrayRef[L<Paws::Config::PendingAggregationRequest>]

Returns a PendingAggregationRequests object.


=head2 _request_id => Str


=cut

1;