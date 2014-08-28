
package Aws::EC2::DescribeReservedInstancesModificationsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesModifications => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesModification]', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationsSet');

}
1;