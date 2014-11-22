
package Paws::EC2::PurchaseReservedInstancesOfferingResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');

}
1;