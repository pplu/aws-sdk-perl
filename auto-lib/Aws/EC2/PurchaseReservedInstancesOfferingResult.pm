
package Aws::EC2::PurchaseReservedInstancesOfferingResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');

}
1;