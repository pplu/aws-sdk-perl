
package Aws::EC2::DescribeReservedInstancesListingsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
1;