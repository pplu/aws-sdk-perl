
package Aws::EC2::DescribeReservedInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstances]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');

}
1;