
package Paws::Config::DescribeAggregationAuthorizationsResponse;
  use Moose;
  has AggregationAuthorizations => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregationAuthorization]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeAggregationAuthorizationsResponse

=head1 ATTRIBUTES


=head2 AggregationAuthorizations => ArrayRef[L<Paws::Config::AggregationAuthorization>]

Returns a list of authorizations granted to various aggregator accounts
and regions.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;