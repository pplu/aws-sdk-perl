
package Paws::RedShift::PurchaseReservedNodeOffering {
  use Moose;
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::PurchaseReservedNodeOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOfferingResult');
}
1;