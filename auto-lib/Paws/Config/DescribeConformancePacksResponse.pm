
package Paws::Config::DescribeConformancePacksResponse;
  use Moose;
  has ConformancePackDetails => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePacksResponse

=head1 ATTRIBUTES


=head2 ConformancePackDetails => ArrayRef[L<Paws::Config::ConformancePackDetail>]

Returns a list of C<ConformancePackDetail> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;