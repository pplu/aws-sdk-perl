
package Paws::RedShift::PurchaseReservedNodeOfferingResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ReservedNode => (is => 'ro', isa => 'Paws::RedShift::ReservedNode');

}
1;