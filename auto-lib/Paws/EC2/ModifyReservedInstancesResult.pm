
package Paws::EC2::ModifyReservedInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');

}
1;