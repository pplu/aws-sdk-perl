
package Paws::EC2::DescribeReservedInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstances]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');

}
1;