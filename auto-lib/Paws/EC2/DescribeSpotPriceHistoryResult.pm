
package Paws::EC2::DescribeSpotPriceHistoryResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotPrice]', traits => ['Unwrapped'], xmlname => 'spotPriceHistorySet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistoryResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The string marking the next set of results. This is empty if there are
no more results.









=head2 SpotPriceHistory => ArrayRef[Paws::EC2::SpotPrice]

  

The historical Spot Prices.











=cut

