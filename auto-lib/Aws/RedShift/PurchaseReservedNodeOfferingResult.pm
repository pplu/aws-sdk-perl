
package Aws::RedShift::PurchaseReservedNodeOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedNode => (is => 'ro', isa => 'Aws::RedShift::ReservedNode');

}
1;