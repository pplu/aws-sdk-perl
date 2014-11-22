
package Paws::EC2::DescribeReservedInstancesOfferingsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesOffering]', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingsSet');

}
1;