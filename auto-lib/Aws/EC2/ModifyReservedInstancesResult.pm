
package Aws::EC2::ModifyReservedInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');

}
1;