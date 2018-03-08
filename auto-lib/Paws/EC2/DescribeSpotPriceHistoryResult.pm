
package Paws::EC2::DescribeSpotPriceHistoryResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotPrice]', request_name => 'spotPriceHistorySet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistoryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null or an empty string when there are no more results to return.


=head2 SpotPriceHistory => ArrayRef[L<Paws::EC2::SpotPrice>]

The historical Spot prices.


=head2 _request_id => Str


=cut

