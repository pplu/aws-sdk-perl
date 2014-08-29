
package Aws::RedShift::DescribeReservedNodeOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNodeOffering]', traits => ['Unwrapped'], xmlname => 'ReservedNodeOfferings');

}
1;