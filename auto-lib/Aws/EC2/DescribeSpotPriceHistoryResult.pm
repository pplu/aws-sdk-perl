
package Aws::EC2::DescribeSpotPriceHistoryResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SpotPrice]', traits => ['Unwrapped'], xmlname => 'spotPriceHistorySet');

}
1;