
package Paws::Config::SelectAggregateResourceConfigResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryInfo => (is => 'ro', isa => 'Paws::Config::QueryInfo');
  has Results => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::SelectAggregateResourceConfigResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 QueryInfo => L<Paws::Config::QueryInfo>




=head2 Results => ArrayRef[Str|Undef]

Returns the results for the SQL query.


=head2 _request_id => Str


=cut

1;