
package Aws::EC2::PurchaseReservedInstancesOffering {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has LimitPrice => (is => 'ro', isa => 'Aws::EC2::ReservedInstanceLimitPrice');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::PurchaseReservedInstancesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
